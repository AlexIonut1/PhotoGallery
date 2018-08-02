class AuthController < ApplicationController
  def index
  end

  def login
    puts "Some text"
  end

  def processLogin
    puts params.inspect
  end
end
