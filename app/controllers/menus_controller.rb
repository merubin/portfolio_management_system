class MenusController < ApplicationController
  def index
    @current_user = User.find(1)

  end
end
