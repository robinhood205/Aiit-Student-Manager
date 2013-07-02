class StudentsList < ActiveRecord::Base
  attr_accessible :E_mail, :PBL_1st, :PBL_2nd, :PBL_teacher, :class, :classification, :gakusyu_no, :grade, :name, :nationality, :nyugaku, :risyukikan, :syuryo, :user_id, :visa
end
