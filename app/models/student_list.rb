class StudentList < ActiveRecord::Base
  attr_accessible :PBL_1st, :PBL_2nd, :PBL_teacher, :aiit_member_id, :beginning, :campus_email, :classification, :end, :entrance_date, :grade, :graduation_date, :guarantor_id, :memo, :name, :nationality, :program, :student_account, :visa

  has_many :tuitions
  has_many :status_records

  belongs_to :aiit_member
  belongs_to :guarantor
end
