class CreateStudentLists < ActiveRecord::Migration
  def change
    create_table :student_lists do |t|
      t.integer :aiit_member_id
      t.string :name
      t.string :classification
      t.integer :grade
      t.string :program
      t.string :student_account
      t.string :campus_email
      t.string :nationality
      t.string :visa
      t.date :entrance_date
      t.string :study_period
      t.date :graduation_date
      t.string :PBL_1st
      t.string :PBL_2nd
      t.string :PBL_teacher
      t.integer :guarantor_id
      t.text :memo

      t.timestamps
    end
  end
end
