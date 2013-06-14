class CreateAssociationPbls < ActiveRecord::Migration
  def change
    create_table :association_pbls do |t|
      t.string :name

      t.timestamps
    end
  end
end
