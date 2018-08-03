class AuthController < ApplicationController
  #https://buildtoship.com/simple-signup-and-login-in-your-app-part-2/

  def login
    puts "Some text"
  end

  def processlogin
    #check if a user with the given email exists
    @user = User.where("email = ? and password = ?", params[:user][:email], params[:user][:password]).first

    #if the user credentials were correct
    if @user
      redirect_to photos_index_url
    end

    @email = params[:user][:email]
    session[:user_id] = @user.id
  end

  def logout
    reset_session

    redirect_to login_url

    return
  end
end
