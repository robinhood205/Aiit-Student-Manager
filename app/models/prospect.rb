class Prospect < ActiveRecord::Base
  attr_accessible :aiit_member_id, :applikation, :contact_unnecessary, :event, :memo, :received_date, :visited_date, :wished_material, :wished_program

  belongs_to :aiit_member
end
