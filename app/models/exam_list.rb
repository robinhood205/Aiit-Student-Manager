class ExamList < ActiveRecord::Base
  attr_accessible :basicknowledge, :citizenoftokyo, :decisionreason, :examination, :examno, :examyear, :interview, :memo, :paper, :presentation, :result, :reviewflg, :testscore
end
