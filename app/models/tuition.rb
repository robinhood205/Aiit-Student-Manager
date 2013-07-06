class Tuition < ActiveRecord::Base
  attr_accessible :first_term_reduction, :loan_amount, :memo, :scholarship_division, :second_term_reduction, :transfer_request
end
