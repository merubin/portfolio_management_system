class PortfoliosController < ApplicationController
  def show
    @current_user = User.find(params[:id])
    @portfolio = Portfolio.find(params[:id])
  end
end
