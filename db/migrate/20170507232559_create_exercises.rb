class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.integer :name
      t.integer :category
      t.integer :goal
      t.integer :user_id

      t.timestamps
    end
  end
end
