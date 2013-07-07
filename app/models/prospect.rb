class Prospect < ActiveRecord::Base
  attr_accessible :applikation, :contact_unnecessary, :event, :master_id, :memo, :received_date, :visited_date, :wished_material, :wished_program
end
