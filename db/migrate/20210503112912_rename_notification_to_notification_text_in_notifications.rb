class RenameNotificationToNotificationTextInNotifications < ActiveRecord::Migration[6.1]
  def change
    rename_column :notifications, :notification, :notification_text
  end
end
