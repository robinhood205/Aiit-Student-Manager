class ExamList < ActiveRecord::Base
  attr_accessible :aiit_member_id, :basic_knowledge, :citizen_of_tokyo, :decision_reason, :exam_no, :exam_year, :examination, :interview, :memo, :paper, :presentation, :result, :review_flg, :test_score

  belongs_to :aiit_member
end
