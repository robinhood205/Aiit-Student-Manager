class StudentList < ActiveRecord::Base
  attr_accessible :PBL_1st, :PBL_2nd, :PBL_teacher, :campus_email, :classification, :entrance_date, :grade, :graduation_date, :memo, :name, :nationality, :program, :student_account, :student_id, :study_period, :visa
end
