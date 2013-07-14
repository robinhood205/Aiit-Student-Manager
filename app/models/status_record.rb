class StatusRecord < ActiveRecord::Base
  attr_accessible :absence_reason, :absence_time, :memo, :status, :student_no

  belongs_to :student_list, :foreign_key => "student_no"
end
