class PagesController < ApplicationController
  before_action :authenticate, :except => [:index]

  def index
    @books = Book.all
  end

end