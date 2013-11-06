# coding: utf-8
class Tuition < ActiveRecord::Base
extend Enumerize
  attr_accessible :exemption_type, :loan_amount, :memo, :scholarship_division, :transfer_request

  belongs_to :student_list

  enumerize :exemption_type, in: [:全免, :半免, :分納, :不承認]
  enumerize :loan_amount, in: [:'260,400', :'130,200', :'208,320', :'104,160', :'173,600', :'86,800']
end
