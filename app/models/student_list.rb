class StudentList < ActiveRecord::Base
	set_primary_key :student_no
  attr_accessible :PBL_1st, :PBL_2nd, :PBL_teacher, :aiit_member_id, :campus_email, :classification, :entrance_date, :grade, :graduation_date, :guarantor_id, :memo, :nationality, :program, :student_account, :student_no, :study_period, :visa
  has_many :tuitions, :foreign_key => "student_no", :primary_key => "student_no"

  belongs_to :aiit_member
  belongs_to :guarantor
end
