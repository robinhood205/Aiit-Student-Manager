class CreateAssociationTeachers < ActiveRecord::Migration
  def change
    create_table :association_teachers do |t|
      t.string :name
      t.integer :association_pbl_id

      t.timestamps
    end
  end
end
