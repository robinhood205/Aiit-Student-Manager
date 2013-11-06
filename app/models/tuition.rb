class Tuition < ActiveRecord::Base
  attr_accessible :exemption_type, :loan_amount, :memo, :scholarship_division, :student_list_id, :transfer_request
end
