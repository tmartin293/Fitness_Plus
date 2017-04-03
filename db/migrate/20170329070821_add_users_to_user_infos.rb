class AddUsersToUserInfos < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_infos, :users, foreign_key: true
  end
end
