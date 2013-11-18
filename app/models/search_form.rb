class SearchForm
  include ActiveAttr::Model

  class_attribute :_search_model
  class_attribute :_like_attributes
  class_attribute :_equal_attributes
  class_attribute :_join_tables

  self._like_attributes  = []
  self._equal_attributes = []
  self._join_tables   = []

  class << self
    private
    def inherited(child)
      child._search_model = child.name.gsub('SearchForm', '').constantize
    end

    def define_attribute(*attrs)
      attrs.each do |attr|
        if attr.respond_to?(:each)
          attr.each do |attr2|
            __send__(:attribute, attr2) unless attributes.include?(attr2)
          end
        else
          __send__(:attribute, attr) unless attributes.include?(attr)
        end
      end
    end

    def search_model(attr)
      self._search_model = attr
    end

    def like_attributes(*attrs)
      define_attribute attrs
      if attrs.respond_to?(:each)
        attrs.each do |attr|
          self._like_attributes += [attr]
        end
      else
        self._like_attributes += [attrs[0]]
      end
    end

    def equal_attributes(*attrs)
      define_attribute attrs
      if attrs.respond_to?(:each)
        attrs.each do |attr|
          self._equal_attributes += [attr]
        end
      else
        self._equal_attributes += [attrs[0]]
      end
    end

    def join_tables(*attrs)
      define_attribute attrs
      if attrs.respond_to?(:each)
        attrs.each do |attr|
          self._join_tables += [attr]
        end
      else
        self._join_tables += [attrs[0]]
      end
    end
  end

  def search
    scoped = _search_model.scoped
    _like_attributes.each do |attr|
      scoped = scoped.where _search_model.arel_table[attr].matches("%#{send(attr)}%") if send(attr).present?
    end
    _equal_attributes.each do |attr|
      scoped = scoped.where _search_model.arel_table[attr].eq(send(attr)) if send(attr).present?
    end

    _join_tables.each do |model|
      scoped = scoped.includes model
    end
    scoped
  end
end