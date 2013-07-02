class CreateStudentsLists < ActiveRecord::Migration
  def change
    create_table :students_lists do |t|
      t.string :name
      t.string :classification
      t.string :gakusyu_no
      t.string :grade
      t.string :class
      t.string :user_id
      t.string :E_mail
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
