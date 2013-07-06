class StatusRecord < ActiveRecord::Base
  attr_accessible :absence_reason, :absence_time, :memo, :status
end
