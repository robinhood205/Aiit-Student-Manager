# -*- coding: utf-8 -*-
class AssociationStudent < ActiveRecord::Base
  attr_accessible :name, :association_tel_ids, :association_pbl_id

  has_many :association_tels
  has_one :association_pbl

  # has_oneの場合アクセッサを用意してくれないようなので自分で定義する
  def association_pbl_id
    self.association_pbl.try :id
  end
  def association_pbl_id=(id)
    self.association_pbl = AssociationPbl.find_by_id(id)
  end
end
