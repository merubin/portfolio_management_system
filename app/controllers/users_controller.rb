class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    if params[:avatar_url] == nil || params[:avatar_url].length == 0
      params[:avatar_url]="http://vignette1.wikia.nocookie.net/bokunoheroacademia/images/d/d5/NoPicAvailable.png/revision/latest?cb=20160326222204"
    end
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
    # need to check if user has any projects
    # @projects=@user.projects.find.try(@user)
    # if @projects.id != nil
    #   puts "++++++++++DELETING USERS WITH PROJECTS ++++++++++++++++"
    #   p @projects
    #   flash[:alert] = "User #{@user.name} cannot be deleted as he has active projects"
    #   redirect_to user_projects_path(@user)
    # else
begin
      @user.destroy
      redirect_to users_path
    rescue
      flash[:alert] = "User #{@user.name} cannot be deleted as he has active projects"
      redirect_to user_projects_path(@user)
    end

    # end
  end

  private
  def user_params
    params.require(:user).permit(:avatar_url, :name, :userid, :password)
  end

end
