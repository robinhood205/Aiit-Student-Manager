class CreateExamLists < ActiveRecord::Migration
  def change
    create_table :exam_lists do |t|
      t.integer :aiit_member_id
      t.string :exam_no
      t.boolean :review_flg
      t.string :decision_reason
      t.boolean :citizen_of_tokyo
      t.string :examination
      t.integer :exam_year
      t.integer :basic_knowledge
      t.integer :paper
      t.integer :presentation
      t.integer :interview
      t.integer :test_score
      t.boolean :result
      t.text :memo

      t.timestamps
    end
  end
end
