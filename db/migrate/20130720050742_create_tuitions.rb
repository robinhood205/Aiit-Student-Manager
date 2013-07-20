class CreateTuitions < ActiveRecord::Migration
  def change
    create_table :tuitions do |t|
      t.integer :student_list_id
      t.string :transfer_request
      t.string :first_term_reduction
      t.string :second_term_reduction
      t.string :scholarship_division
      t.string :loan_amount
      t.text :memo

      t.timestamps
    end
  end
end
