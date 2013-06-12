class AssociationStudent < ActiveRecord::Base
  attr_accessible :association_pbl_id, :name

  belongs_to :association_pbl
end
