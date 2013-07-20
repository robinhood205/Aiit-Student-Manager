class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.integer :aiit_member_id
      t.date :received_date
      t.string :wished_program
      t.string :wished_material
      t.string :event
      t.date :visited_date
      t.boolean :contact_unnecessary
      t.string :applikation
      t.text :memo

      t.timestamps
    end
  end
end
