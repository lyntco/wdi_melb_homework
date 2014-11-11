class RecipesController < ApplicationController


def show
    @recipe = Recipe.find(params[:id])
  end

    def new
    @recipe = Recipe.new
  end


  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
    redirect_to root_path
    else
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :cuisine, :image_url)
  end

  # def about
  # end



end
