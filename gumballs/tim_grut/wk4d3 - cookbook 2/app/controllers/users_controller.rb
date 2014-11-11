class UsersController < ApplicationController
  skip_before_action :authenticate

  def index
    @users = User.all
  end

end