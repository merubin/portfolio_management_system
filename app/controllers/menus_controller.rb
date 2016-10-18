class MenusController < ApplicationController
  def index
    @current_user = User.find(@current_user.id)

  end
end
