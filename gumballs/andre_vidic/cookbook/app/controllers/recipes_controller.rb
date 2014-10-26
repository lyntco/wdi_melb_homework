class RecipesController < ApplicationController

  def index
      @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @books = Book.all
  end

  def new
    @recipe = Recipe.new
    @books = Book.all
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to root_path, :notice => 'new recipe has been successfully created'
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @books = Book.all
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe.id)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :meal_type, :cooktime, :servingsize, :instructions, :image_url, :book_id, :ingredient_ids => [])
  end

end