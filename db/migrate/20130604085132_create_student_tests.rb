class CreateStudentTests < ActiveRecord::Migration
  def change
    create_table :student_tests do |t|
      t.string :name
      t.integer :grade

      t.timestamps
    end
  end
end
