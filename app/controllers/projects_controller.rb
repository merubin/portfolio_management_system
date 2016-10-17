class ProjectsController < ApplicationController
  def index
    if params[:user_id]== nil
      @current_user=User.find(1)
      @projects=Project.all
    else
      @current_user=User.find(params[:user_id])
      @projects=Project.where(user_id: params[:user_id])
    end

  end

  def new
        @current_user=User.find(params[:user_id])
        @project = Project.new
  end

  def create

    @current_user=User.find(params[:user_id])
    @project = @current_user.projects.create(project_params)

#pp6 = ProjectPortfolio.create(project: project6, portfolio: portfolio2)


    redirect_to user_projects_path(@current_user)
  end


  def show
  end


  def edit
      @current_user=User.find(params[:user_id])
      @project= Project.find(params[:id])
  end

  def update

    @current_user=User.find(params[:user_id])
    @project = @current_user.projects.create(project_params)

    redirect_to user_projects_path(@current_user)

  end

  def destroy
  end

  private
  def project_params
    params.require(:project).permit(:name, :header1,:header2, :description, :screen_img,:host_url,:user_id)
  end

end
