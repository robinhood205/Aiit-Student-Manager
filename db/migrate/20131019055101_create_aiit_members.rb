class CreateAiitMembers < ActiveRecord::Migration
  def change
    create_table :aiit_members do |t|
      t.string :name
      t.string :kana_name
      t.date :birthday
      t.string :gender
      t.text :memo

      t.timestamps
    end
  end
end
