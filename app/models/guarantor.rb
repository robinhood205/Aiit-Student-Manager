# coding: utf-8
class Guarantor < ActiveRecord::Base
  attr_accessible :guarantor_address, :guarantor_kana, :guarantor_tel, :guarantor_zip, :memo, :name, :relationship

  has_many :student_lists

  validates_presence_of :name
  validates_format_of :guarantor_zip, :with => /^\d{3}-\d{4}$/, :allow_blank => true, :message => "記入例：140-0011"
end
