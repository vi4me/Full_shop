class UsersController < ApplicationController

  def profile
    @user = current_user
  end

  def update
    current_user.update(user_params)
    redirect_to profile_users_path
  end

  def create
    User.create(user_params)
    redirect_to profile_users_path
  end


  private

  def user_params
    params.require(:user).permit(:first_name,
    :last_name)
  end

end
