class CreateAiitMembers < ActiveRecord::Migration
  def change
    create_table :aiit_members do |t|
      t.string :family_name
      t.string :given_name
      t.date :birthday
      t.string :sex

      t.timestamps
    end
  end
end
