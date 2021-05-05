class AddFriendIdToNotifications < ActiveRecord::Migration[6.1]
  def change
    add_column :notifications, :friend_id, :integer
  end
end
