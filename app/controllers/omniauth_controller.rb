class OmniauthController < ApplicationController

  skip_before_action :authenticate_user!

  def facebook
    @user = User.create_from_provider_data(request.env['omniauth.auth'])
    if @user.persisted?
      sign_in_and_redirect @user
      flash[:notice] = 'You are successfully loged in with facebook!'
    else
      flash[:alert] = 'There was a problem signing you in through Facebook, Please register or try signing in later'
      redirect_to root_path
    end
  end

  def failure
    flash[:alert] = "there was an error, please sign up"
    redirect_to root_path
  end
end
