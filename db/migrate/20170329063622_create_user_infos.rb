class CreateUserInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :user_infos do |t|
      t.integer :age
      t.integer :height
      t.integer :skill_level
      t.integer :weight

      t.timestamps
    end
  end
end
