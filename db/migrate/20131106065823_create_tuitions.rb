class CreateTuitions < ActiveRecord::Migration
  def change
    drop_table :tuitions
    create_table :tuitions do |t|
      t.integer :student_list_id
      t.boolean :transfer_request
      t.string :exemption_type
      t.string :loan_amount
      t.string :scholarship_division
      t.text :memo

      t.timestamps
    end
  end
end
