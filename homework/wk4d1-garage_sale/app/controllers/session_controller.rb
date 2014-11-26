class SessionController < ApplicationController
  skip_before_action :authenticate #restricts pages

  def new
  end

  def create

    user = User.where(:name => params[:name]).first
    # user = User.find_by(name: params[:username])

    if user.present? && user.authenticate(params[:password]) #user.present? makes sure the form filed isn't empty
      #correct password
      session[:user_id] = user.id
      redirect_to root_path
    else
      #incorrect password
      redirect_to login_path
    end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end
