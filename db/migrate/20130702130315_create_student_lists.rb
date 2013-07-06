class CreateStudentLists < ActiveRecord::Migration
  def change
    create_table :student_lists do |t|
      t.string :name
      t.string :classification
      t.string :gakusyu_no
      t.string :grade
      t.string :program
      t.string :student_account
      t.string :Email
      t.string :nationality
      t.string :visa
      t.date :nyugaku
      t.string :risyukikan
      t.date :syuryo
      t.string :PBL_1st
      t.string :PBL_2nd
      t.string :PBL_teacher

      t.timestamps
    end
  end
end
