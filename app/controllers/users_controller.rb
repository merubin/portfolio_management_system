class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to users_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_path(@user)
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:avatar_url, :name, :userid, :password)
  end

end
