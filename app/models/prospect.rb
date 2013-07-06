class Prospect < ActiveRecord::Base
  attr_accessible :applikation, :contact_unnecessary, :event, :received_date, :visited_date, :wished_material, :wished_program
end
