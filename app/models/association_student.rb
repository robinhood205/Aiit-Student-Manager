# -*- coding: utf-8 -*-
class AssociationStudent < ActiveRecord::Base
  attr_accessible :name, :association_pbl_id

  belongs_to :association_pbl
end
