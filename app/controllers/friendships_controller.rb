class FriendshipsController < ApplicationController
  def create
    @friendship = Friendship.create(friendship_params)
    @inverse_friendship = Friendship.create(user_id: params[:friend_id], friend_id: params[:user_id])
    @user = current_user
    flash[:notice] = "Friendship created!"
    @notification = Notification.find_by_id(params[:notification])
    @notification.destroy
    redirect_to @user
  end

  def destroy
  end

  private
  def friendship_params
    params.permit(:user_id, :friend_id)
  end
end
