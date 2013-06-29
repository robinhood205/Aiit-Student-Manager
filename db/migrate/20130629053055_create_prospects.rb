class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.date :jusndt
      t.string :kbsnko
      t.string :kbsryo
      t.string :event
      t.date :raijdt
      t.boolean :infoyn
      t.string :syugan

      t.timestamps
    end
  end
end
