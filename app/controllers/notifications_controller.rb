class NotificationsController < ApplicationController
  def new
    @notification = Notification.new
  end

  def create
    @notification = Notification.new(notification_params)
    @user = current_user
    if @notification.save
      flash[:notice] = "Friend invited!"
    else
      flash[:notice] = "Friend already invited!"
    end
    redirect_to @user
  end

  def index
    @notifications = Notification.all
  end

  def destroy
    @notification = Notification.find_by_id(params[:id])
    @notification.destroy
    redirect_to root_path
  end

  private
  def notification_params
    params.permit(:notification_text, :user_id)
  end
end
