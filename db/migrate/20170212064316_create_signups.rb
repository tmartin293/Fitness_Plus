class CreateSignups < ActiveRecord::Migration[5.0]
  def change
    create_table :signups do |t|
      t.string :Name
      t.string :Username
      t.string :Email
      t.string :Password

      t.timestamps
    end
  end
end
