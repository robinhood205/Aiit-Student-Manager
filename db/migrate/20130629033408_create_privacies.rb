class CreatePrivacies < ActiveRecord::Migration
  def change
    create_table :privacies do |t|
      t.string :name
      t.string :kana_name
      t.string :eng_name
      t.string :sex
      t.date :birthday
      t.string :nationality
      t.string :zip_code
      t.string :city
      t.string :block
      t.string :address
      t.string :building
      t.string :tel
      t.string :mobile
      t.string :mail_pc
      t.string :mail_mobile
      t.string :graduated_school
      t.string :department
      t.date :graduated_date
      t.string :occupation
      t.string :company
      t.string :company_address

      t.timestamps
    end
  end
end
