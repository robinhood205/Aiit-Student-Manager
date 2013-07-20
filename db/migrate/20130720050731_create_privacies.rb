class CreatePrivacies < ActiveRecord::Migration
  def change
    create_table :privacies do |t|
      t.integer :aiit_member_id
      t.string :kana_name
      t.string :eng_name
      t.string :gender
      t.date :birthday
      t.string :birthplace
      t.string :zip_code
      t.string :city
      t.string :block
      t.string :address
      t.string :building
      t.string :tel
      t.string :mobile
      t.string :pc_email
      t.string :mobile_email
      t.string :graduated_school
      t.string :department
      t.string :stream
      t.string :graduated_date
      t.boolean :new_graduates
      t.string :occupation
      t.string :company
      t.string :company_address
      t.string :work_period
      t.text :memo

      t.timestamps
    end
  end
end
