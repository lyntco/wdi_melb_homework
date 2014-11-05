class UsersController < ApplicationController
  skip_before_action :authenticate
  def index
    before_action :authenticate
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:username]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    if @user.save
      redirect_to login_path
    else
      render :new
    end
  end
end
