class CreateSupports < ActiveRecord::Migration[5.0]
  def change
    create_table :supports do |t|
      t.string :Name
      t.string :Email
      t.string :Subject
      t.string :Message

      t.timestamps
    end
  end
end
