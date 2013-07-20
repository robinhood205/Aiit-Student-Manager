class AiitMember < ActiveRecord::Base
  attr_accessible :birthday, :gender, :memo, :name

  has_one :privacy
  has_many :prospects
  has_many :exam_lists
  has_many :student_lists
end
