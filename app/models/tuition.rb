# coding: utf-8
class Tuition < ActiveRecord::Base
extend Enumerize
  attr_accessible :exemption_type, :loan_amount, :memo, :scholarship_division, :student_list_id, :transfer_request

  belongs_to :student_list
  
  enumerize :exemption_type, in: [:全免, :半免, :分納, :不承認]
  enumerize :loan_amount, in: [:'260400', :'130200', :'208320', :'104160', :'173600', :'86800']
end
