# coding: utf-8
class StudentList < ActiveRecord::Base
extend Enumerize
  attr_accessible :PBL_1st, :PBL_2nd, :PBL_teacher, :aiit_member_id, :beginning, :campus_email, :classification, :end, :grade, :guarantor_id, :longterm, :memo, :name, :nationality, :program, :student_account, :visa

  has_many :tuitions
  has_many :status_records

  belongs_to :aiit_member
  belongs_to :guarantor

  enumerize :classification, in: [:正規生, :科目等履修生, :特別科目等履修生, :履修証明プログラム生, :'enPiT生', :聴講生]
  enumerize :longterm, in: [:なし, :'2.5年', :'3年'], :default => :なし
end
