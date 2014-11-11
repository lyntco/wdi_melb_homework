class CategoriesController < ApplicationController
  before_action :authenticate
  def index
    @categories = Category.all
  end

  def new
        @categories = Category.new

  end

  def create
        @category = Category.new(category_params)
if @category.save
      redirect_to '/categories'
    else
      render :new
    end
  end

   def category_params
    params.require(:category).permit(:name)
  end

end
