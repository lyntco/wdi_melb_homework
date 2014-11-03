class SessionController < ApplicationController
  skip_before_action :authenticate

  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      raise "password right"
      redirect_to root_path
    else
      raise "password wrong"
      redirect_to login_path, :notice => 'incorrect login or password'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end