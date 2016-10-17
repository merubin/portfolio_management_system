
class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
  input_userid = params[:user][:userid]   # Save the userid value submitted through the form

  # If the user exists, sign them in...
  if User.exists?(userid: input_userid)
    @user = User.find_by(userid: input_userid)  # Find that user

    # If the password submitted through the form is correct...
    if @user.password == params[:user][:password]
     flash[:notice] = "You're signed in!"
      session[:userid] = @user.id  # Set the session user_id to that of the user trying to log in
      redirect_to users_path
    else
      flash[:alert] = "Wrong password!"
      redirect_to new_session_path  # Send them back to the sign-in form
    end

  # Otherwise, send them back to the sign-in form so they can enter a valid userid-password combination
  else
 flash[:alert] = "That user doesn't exist!"
    redirect_to new_session_path
  end
end

end
