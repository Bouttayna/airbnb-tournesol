class AccountsController < ApplicationController
  before_action :set_user

  def show
  end

  def edit

  end

  def update
    @user.update(user_params)
    redirect_to account_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :description, :avatar)
  end


  def set_user
    @user = current_user
  end

end
