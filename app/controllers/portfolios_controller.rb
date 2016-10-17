class PortfoliosController < ApplicationController
  def show
    @current_user = User.find(params[:id])
    @portfolio = Portfolio.find(params[:id])
  end

  def new
    puts(params)
    params[:projects]
    # create a hash with priject id's
    proj_list=[]
    params.each do  |p1|
      if p1[0.."project".length-1]=="project"
        val=params[p1]
        proj_list.push(val)
      end
    end
    @current_user=User.find(params[:user_id])
    @projects=proj_list

    @portfolio = Portfolio.new

  end

  def create

    @current_user=User.find(params[:user_id])
    @portfolio= @current_user.portfolios.create(portfolio_params)

    proj_list= params[:projects].split(" ")
    #ceate index record
      proj_list.each do   |p|

      project=Project.find(p.to_i)
      ProjectPortfolio.create(project: project, portfolio: @portfolio)
    end

  redirect_to user_projects_path(@current_user)
end

  private
  def portfolio_params
    params.require(:portfolio).permit(:title, :description, :user_id)
  end


end
