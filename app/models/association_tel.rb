class AssociationTel < ActiveRecord::Base
  attr_accessible :number, :association_student_id

  belongs_to :association_student
end
