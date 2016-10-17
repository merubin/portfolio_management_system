
class SessionController < ApplicationController
  def new
    @user = User.new
  end

  def create
  input_username = params[:user][:username]   # Save the username value submitted through the form

  # If the user exists, sign them in...
  if User.exists?(username: input_username)
    @user = User.find_by(username: input_username)  # Find that user

    # If the password submitted through the form is correct...
    if @user.password == params[:user][:password]
      puts "You're signed in!"
      session[:user_id] = @user.id  # Set the session user_id to that of the user trying to log in
      redirect_to root_path   # Send them back to the app
    else
      puts "Wrong password!"
      redirect_to new_session_path  # Send them back to the sign-in form
    end

  # Otherwise, send them back to the sign-in form so they can enter a valid username-password combination
  else
    puts "That user doesn't exist!"
    redirect_to new_session_path
  end
end

end
