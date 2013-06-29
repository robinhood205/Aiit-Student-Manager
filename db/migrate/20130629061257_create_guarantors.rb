class CreateGuarantors < ActiveRecord::Migration
  def change
    create_table :guarantors do |t|
      t.string :name
      t.string :namekata
      t.integer :zip
      t.string :address
      t.integer :tel
      t.string :relationship

      t.timestamps
    end
  end
end
