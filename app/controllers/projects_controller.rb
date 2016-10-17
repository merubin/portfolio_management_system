class ProjectsController < ApplicationController
  def index
    @current_user=User.find(params[:user_id])
    @projects=Project.where(user_id: params[:user_id])

  end

  def new
        @current_user=User.find(params[:user_id])
        @project = Project.new
        puts("completed new")
  end

  def create
    puts("in create method")
    @current_user=User.find(params[:user_id])
    @project = @current_user.projects.create(project_params)
    puts("just called build")
    redirect_to user_projects_path(@current_user)
  end


  def show
  end


  def show
  end

  def update
  end

  def destroy
  end

  private
  def project_params
    params.require(:project).permit(:name, :header1,:header2, :description, :screen_img,:host_url,:user_id)
  end

end
