class CreateAssociationStudents < ActiveRecord::Migration
  def change
    create_table :association_students do |t|
      t.string :name
      t.integer :association_pbl_id

      t.timestamps
    end
  end
end
