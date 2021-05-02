class RenameLikesCounterToUserIdInLikes < ActiveRecord::Migration[6.1]
  def change
    rename_column :likes, :likes_counter, :user_id
  end
end
