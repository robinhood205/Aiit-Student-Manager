# -*- coding: utf-8 -*-
class StudentTest < ActiveRecord::Base
  attr_accessible :grade, :name, :tel_test_ids, :guarantor_id

  has_many :tel_tests
  has_one :guarantor

  # has_oneの場合アクセッサを用意してくれないようなので自分で定義する
  def guarantor_id
    self.guarantor.try :id
  end
  def guarantor_id=(id)
    self.guarantor = Guarantor.find_by_id(id)
  end
end
