class NotificationChangeColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column :notifications, :notification, :string
  end
end
