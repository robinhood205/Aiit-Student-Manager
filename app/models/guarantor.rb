class Guarantor < ActiveRecord::Base
  attr_accessible :guarantor_address, :guarantor_kana, :guarantor_tel, :guarantor_zip, :memo, :name, :relationship

  has_many :student_lists

#  def hello
#  	self.name += "I am"
#  end
end
