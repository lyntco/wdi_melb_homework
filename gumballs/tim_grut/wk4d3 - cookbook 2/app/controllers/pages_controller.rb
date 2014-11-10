class PagesController < ApplicationController
  before_action :authenticate

  def index
    @books = Book.all
  end

  def about
  end

end