class CreateAssociationTels < ActiveRecord::Migration
  def change
    create_table :association_tels do |t|
      t.string :number
      t.integer :association_student_id

      t.timestamps
    end
  end
end
