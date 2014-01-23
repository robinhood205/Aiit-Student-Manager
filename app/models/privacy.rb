# coding: utf-8
class Privacy < ActiveRecord::Base
extend Enumerize
  attr_accessible :address, :aiit_member_id, :birthplace, :block, :building, :city, :company, :company_address, :department, :eng_name, :graduated_date, :graduated_school, :memo, :mobile, :mobile_email, :new_graduates, :occupation, :pc_email, :stream, :tel, :work_period, :zip_code

  belongs_to :aiit_member
  enumerize :stream, in: [:文系, :理系, :その他]

  validates_presence_of :aiit_member_id
  validates_format_of :mobile, :with => /^\d{3}-\d{4}-\d{4}$/, :allow_blank => true, :message => "記入例：080-1234-5678"
  validates_format_of :pc_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, :allow_blank => true, :message => "記入例：test@gamil.com"
  validates_format_of :mobile_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, :allow_blank => true, :message => "記入例：test@softbank.ne.jp"
  validates_format_of :zip_code, :with => /^\d{3}-\d{4}$/, :allow_blank => true, :message => "記入例：140-0011"
end
