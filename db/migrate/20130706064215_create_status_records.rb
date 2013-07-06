class CreateStatusRecords < ActiveRecord::Migration
  def change
    create_table :status_records do |t|
      t.string :status
      t.string :absence_time
      t.string :absence_reason
      t.string :memo

      t.timestamps
    end
  end
end
