# -*- coding: utf-8 -*-
class AssociationPbl < ActiveRecord::Base
  attr_accessible :name, :association_teacher_id ,:association_student_ids

  has_one :association_teacher
  has_many :association_students

  # has_oneの場合アクセッサを用意してくれないようなので自分で定義する
  def association_teacher_id
    self.association_teacher.try :id
  end
  def association_teacher_id=(id)
    self.association_teacher = AssociationTeacher.find_by_id(id)
  end
end
