class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new
    user.name = params[:user][:name]
    if params[:user][:password] == params[:user][:password_confirmation]
      user.password = params[:user][:password]
      user.save

      session[:user_id] = user.id
      redirect_to "/home"
    else
      redirect_to '/register'
    end
  end

  def home
    @user = User.find(session[:user_id])
  end

  private

  def user_params
    {name: params[:username], password: params[:password]}
  end

end
