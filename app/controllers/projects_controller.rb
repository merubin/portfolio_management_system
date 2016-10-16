class ProjectsController < ApplicationController
  def index
    @current_user=User.find(params[:user_id])
    @projects=Project.where(user_id: params[:user_id])

  end

  def new
  end

  def show
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end
end
