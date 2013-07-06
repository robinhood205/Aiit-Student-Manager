class CreateTuitions < ActiveRecord::Migration
  def change
    create_table :tuitions do |t|
      t.string :transfer_request
      t.string :first_term_reduction
      t.string :second_term_reduction
      t.string :scholarship_division
      t.string :loan_amount
      t.string :memo

      t.timestamps
    end
  end
end
