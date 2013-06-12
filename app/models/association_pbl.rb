class AssociationPbl < ActiveRecord::Base
  attr_accessible :name, :association_student_id

  belongs_to :association_student
end
