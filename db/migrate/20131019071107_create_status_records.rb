class CreateStatusRecords < ActiveRecord::Migration
  def change
    create_table :status_records do |t|
      t.integer :student_list_id
      t.string :status
      t.string :absence_time
      t.date :beginning
      t.date :end
      t.string :absence_reason
      t.text :memo

      t.timestamps
    end
  end
end
