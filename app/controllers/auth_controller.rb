class AuthController < ApplicationController
  #https://buildtoship.com/simple-signup-and-login-in-your-app-part-2/

  def login
    puts "Some text"
  end

  def newlogin
    #check if a user with the given email exists
    @user = User.where("email = ? and password = ?", params[:user][:email], params[:user][:password]).first

    #if the user credentials were correct
    if @user
      redirect_to photos_index_url
    end

    @email = params[:user][:email]

  end
end
