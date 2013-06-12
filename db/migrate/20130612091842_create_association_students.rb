class CreateAssociationStudents < ActiveRecord::Migration
  def change
    create_table :association_students do |t|
      t.string :name

      t.timestamps
    end
  end
end
