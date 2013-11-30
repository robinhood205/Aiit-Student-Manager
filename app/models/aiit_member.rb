# coding: utf-8
class AiitMember < ActiveRecord::Base
extend Enumerize
  attr_accessible :birthday, :kana_name, :gender, :memo, :name

  has_one :privacy, dependent: :destroy
  has_many :prospects, dependent: :destroy
  has_many :exam_lists, dependent: :destroy
  has_many :student_lists, dependent: :destroy
  has_many :status_records, through: :student_lists
  has_many :tuitions, through: :student_lists

  enumerize :gender, in: [:男, :女]
end