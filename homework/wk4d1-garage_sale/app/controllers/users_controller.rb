class UsersController < ApplicationController
skip_before_action :authenticate, :only => [:new, :create]

def index
  @users = Users.all
end

def new
  @user = User.new
end

def create
  @user = User.new
  @user.name = params[:name]
  @user.password = params[:password]
  @user.password_confirmation = params[:password_confirmation]
  if @user.save
    redirect_to login_path
  else
    render :new
  end
end

end