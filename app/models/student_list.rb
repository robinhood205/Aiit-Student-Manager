class StudentList < ActiveRecord::Base
  attr_accessible :PBL_1st, :PBL_2nd, :PBL_teacher, :aiit_member_id, :campus_email, :classification, :entrance_date, :grade, :graduation_date, :guarantor_id, :memo, :nationality, :program, :student_account, :student_no, :study_period, :visa

  belongs_to :aiit_member
  belongs_to :guarantor
end
