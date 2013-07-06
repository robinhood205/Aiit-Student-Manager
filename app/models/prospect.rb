class Prospect < ActiveRecord::Base
  attr_accessible :application, :contact_unnecessary, :event, :received_date, :visited_date, :wished_material, :wished_program
end
