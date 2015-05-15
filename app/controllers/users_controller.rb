class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def dashboard
    
  end

  def edit
  	@user = current_user
  end

  def user_params
    params.require(:user).permit(:as_pro, :as_start, :first_name)
  end

end
