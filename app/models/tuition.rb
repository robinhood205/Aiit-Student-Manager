class Tuition < ActiveRecord::Base
  attr_accessible :first_term_reduction, :loan_amount, :memo, :scholarship_division, :second_term_reduction, :student_no, :transfer_request

  belongs_to :student_list, :foreign_key => "student_no"
end
