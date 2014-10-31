class SessionController < ApplicationController
  skip_before_action :authenticate

  def create
      # user = User.where(:name => 'params[:username']).first
      user = User.find_by(:username => params[:username])

      # if user && !user.empty?
      if user.present? && user.authenticate(params[:password])
        # correct password
        session[:user_id] = user.id
        redirect_to root_path
      else
        # incorrect password
        redirect_to login_path
      end
    end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end