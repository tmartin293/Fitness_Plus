class RemoveUserInfo < ActiveRecord::Migration[5.0]
  def change
  	drop_table :user_infos
  end
end
