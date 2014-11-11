class UsersController < ApplicationController
    skip_before_action :authentication :only => [:new, :create]

  def index
    before_action :authentication

    @users = User.all

  end
  def new
    @user = User.new
  end
  def create
    user = User.new
    @user.username= params[:username]
    @user.password= params[:password]
    @user.password= params[:password]
    @user.password_confirmation= params[:password_confirmation]
if @user.save
else
  render :new
  end

end
