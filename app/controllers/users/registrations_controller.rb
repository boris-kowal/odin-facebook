class Users::RegistrationsController < Devise::RegistrationsController
  after_action :send_welcome_email, only: :create

  def send_welcome_email
    UserMailer.with(user: @user).welcome_email.deliver_now
  end
end