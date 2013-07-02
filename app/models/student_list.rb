class StudentList < ActiveRecord::Base
  attr_accessible :Email, :PBL_1st, :PBL_2nd, :PBL_teacher, :classification, :gakusyu_no, :grade, :name, :nationality, :nyugaku, :program, :risyukikan, :student_account, :syuryo, :visa
end
