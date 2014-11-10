class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:name])
  end

  def new
    @recipe = Recipe.new
    @books = Book.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @book_id = @recipe.book_id
    if @recipe.save
      redirect_to book_path(@book_id)
    else
      render :new
    end
  end
    private

  def recipe_params
    params.require(:recipe).permit(:name, :meal_type, :cooktime, :servingsize, :instructions, :image_url, :book_id, :ingredient_ids => [])
  end


  end