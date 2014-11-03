class CategoriesController < ApplicationController
  # before_action :authenitcate, :except => [:index]
  # before_action :authenitcate, :only => [:new]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
    @categories = Category.all
  end

  def create
    #create a new category and redirect
    @category = Category.new(category_params)
    if @category.save
      redirect_to 'categories_path' #redirect to '/categories'
    else
      render :new
    end
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
