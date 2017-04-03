class CreatePersonalInfo < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_infos do |t|
      t.integer :height_ft
      t.integer :height_in
      t.integer :weight
      t.integer :age

      t.timestamps
    end
  end
end
