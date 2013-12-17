class ExamList < ActiveRecord::Base
  attr_accessible :aiit_member_id, :basic_knowledge, :citizen_of_tokyo, :decision_reason, :exam_no, :exam_year, :examination, :interview, :memo, :paper, :presentation, :result, :review_flg, :test_score

  belongs_to :aiit_member

  validates_presence_of :aiit_member_id, :exam_no
  validates_numericality_of :basic_knowledge, :less_than_or_equal_to => 100, :greater_than_or_equal_to => 0, :allow_blank => true
  validates_numericality_of :paper, :less_than_or_equal_to => 100, :greater_than_or_equal_to => 0, :allow_blank => true
  validates_numericality_of :presentation, :less_than_or_equal_to => 100, :greater_than_or_equal_to => 0, :allow_blank => true
  validates_numericality_of :interview, :less_than_or_equal_to => 100, :greater_than_or_equal_to => 0, :allow_blank => true
  validates_numericality_of :test_score, :less_than_or_equal_to => 400, :greater_than_or_equal_to => 0, :allow_blank => true
end
