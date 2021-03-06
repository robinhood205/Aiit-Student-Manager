# coding: utf-8
class StatusRecord < ActiveRecord::Base
extend Enumerize
  attr_accessible :absence_reason, :absence_time, :beginning, :end, :memo, :return_reason, :status, :student_list_id

  belongs_to :student_list

  enumerize :status, in: [:退学, :休学, :復学, :除籍]
  enumerize :absence_reason, in: [:業務都合, :経済的理由, :家庭の事情, :健康上の理由, :その他]
  enumerize :absence_time, in: [:一年, :半年, :その他]

  validates_presence_of :student_list_id
end
