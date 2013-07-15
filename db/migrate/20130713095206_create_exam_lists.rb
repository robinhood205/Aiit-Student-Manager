class CreateExamLists < ActiveRecord::Migration
  def change
    create_table :exam_lists do |t|
      t.string :examno
      t.boolean :reviewflg
      t.string :decisionreason
      t.boolean :citizenoftokyo
      t.string :examination
      t.string :examyear
      t.string :basicknowledge
      t.string :paper
      t.string :presentation
      t.string :interview
      t.string :testscore
      t.boolean :result
      t.string :memo

      t.timestamps
    end
  end
end
