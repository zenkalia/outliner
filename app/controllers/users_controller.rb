class UsersController < ApplicationController
  def create
    user = User.where(params.require(:user).permit(:email)).first_or_create
    session[:user_id] = user.id
    redirect_to '/'
  end

  def sign_out
    session[:user_id] = nil
    redirect_to '/'
  end
end
