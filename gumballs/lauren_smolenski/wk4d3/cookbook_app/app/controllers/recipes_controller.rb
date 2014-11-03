class RecipesController < ApplicationController


  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def recipes_in_book
    @book = Book.where(params[:id])
    @recipes = Recipe.where(:book_id => params[:id])
  end

  def new
    @recipe = Recipe.new
    @books = Book.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to '/recipes'
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
    redirect_to '/recipes'
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to '/recipes'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :course, :cooktime, :servingsize, :instructions, :image_url, :ingredient_ids => [])
  end

end