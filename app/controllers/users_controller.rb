class UsersController < ApplicationController
  def create
    User.where(params.require(:user).permit(:email)).first_or_create
  end
end
