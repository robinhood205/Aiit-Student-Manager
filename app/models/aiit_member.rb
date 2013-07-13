class AiitMember < ActiveRecord::Base
  attr_accessible :birthday, :first_name, :gender, :last_name, :memo

  has_one :privacy
  has_many :student_lists
end
