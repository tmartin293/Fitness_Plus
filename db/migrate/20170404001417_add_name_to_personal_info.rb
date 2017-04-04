class AddNameToPersonalInfo < ActiveRecord::Migration[5.0]
  def change
  	add_column :personal_infos, :name, :string
  end
end
