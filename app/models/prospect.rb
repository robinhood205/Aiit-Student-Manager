# coding: utf-8
class Prospect < ActiveRecord::Base
extend Enumerize
  attr_accessible :aiit_member_id, :applikation, :contact_unnecessary, :event, :memo, :received_date, :visited_date, :wished_material, :wished_program

  belongs_to :aiit_member
  enumerize :wished_program, in: [:創造技術専攻, :情報アーキテクチャ専攻, :不明]

  validates_presence_of :aiit_member_id
end
