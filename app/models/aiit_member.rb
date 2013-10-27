class AiitMember < ActiveRecord::Base
  attr_accessible :birthday, :kana_name, :gender, :memo, :name

  has_one :privacy
  has_many :prospects
  has_many :exam_lists
  has_many :student_lists

  rails_admin do
  	
	    list do
			field :name
			field :kana_name
	    	field :birthday
	      	field :gender, :enum do
		        enum do
		          ['Male', 'Female']
		          #["男", "女"]
		        end
	     	 end
	      	field :memo
	    end

	    edit do
			field :name
			field :kana_name
	    	field :birthday
	      	field :gender, :enum do
		        enum do
		          ['Male', 'Female']
		          #["男", "女"]
		        end
	     	 end
	      	field :memo
	    end
  end

end
