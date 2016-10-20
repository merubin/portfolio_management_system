class PortfoliosController < ApplicationController
  # before_action :authenticate_user, only: [:show]
  def show


    if params[:user_id]== nil
      @portfolio = Portfolio.find(params[:id])
    else
      @current_user=User.find(params[:user_id])
      @portfolio = Portfolio.find(params[:id])
    end

  end

  def index

    if params[:user_id]== nil
      @portfolio = Portfolio.all
      @at="All Users"
    else
      @current_user=User.find(params[:user_id])
      @at="User #{@current_user.name}"
      @portfolio = @current_user.portfolios.all
    end

  end

  def new

    flash[:notice] = "Creating a New Portfolio with the following Project id:#{params[:projects]}"
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
    # Create the Portfolio Records
    @current_user=User.find(params[:user_id])
    @portfolio= @current_user.portfolios.create(portfolio_params)

    proj_list= params[:projects].split(" ")
    #create Project-portfolio index records
      proj_list.each do   |p|

      project=Project.find(p.to_i)
      ProjectPortfolio.create(project: project, portfolio: @portfolio)
    end

  redirect_to user_projects_path(@current_user)
end



def edit

  @current_user=User.find(params[:user_id])
  @portfolio= Portfolio.find(params[:id])

end

 def update
   @current_user=User.find(params[:user_id])
   @portfolio= Portfolio.find(params[:id])
   @portfolio.update(portfolio_params)

   redirect_to user_portfolios_path(@current_user,@portfolio)

 end


 def destroy
   @current_user=User.find(params[:user_id])
   @portfolio= Portfolio.find(params[:id])
   @portfolio.destroy

  @portfolio= Portfolio.all
  redirect_to user_portfolios_path(@current_user,@portfolio)
 end



  private
  def portfolio_params
    params.require(:portfolio).permit(:title, :description, :user_id)
  end

  def authenticate_user
      redirect_to root_path unless params[:user_id]
  end

end
