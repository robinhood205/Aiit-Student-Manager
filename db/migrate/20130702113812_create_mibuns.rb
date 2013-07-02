class CreateMibuns < ActiveRecord::Migration
  def change
    create_table :mibuns do |t|
      t.string :status
      t.string :absence_time
      t.string :absence_reason

      t.timestamps
    end
  end
end
