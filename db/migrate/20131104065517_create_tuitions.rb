class CreateTuitions < ActiveRecord::Migration
  def change
    create_table :tuitions do |t|
      t.boolean :transfer_request
      t.string :exemption_type
      t.string :scholarship_division
      t.string :loan_amount
      t.text :memo

      t.timestamps
    end
  end
end
