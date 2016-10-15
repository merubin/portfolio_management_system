class PortfoliosController < ApplicationController
  def show
    @current_user = User.find(1)
    @portfolio = Portfolio.find(params[:id])
  end
end
