class CreateGuarantors < ActiveRecord::Migration
  def change
    create_table :guarantors do |t|
      t.string :name
      t.string :guarantor_kana
      t.string :guarantor_zip
      t.string :guarantor_address
      t.string :guarantor_tel
      t.string :relationship
      t.text :memo

      t.timestamps
    end
  end
end
