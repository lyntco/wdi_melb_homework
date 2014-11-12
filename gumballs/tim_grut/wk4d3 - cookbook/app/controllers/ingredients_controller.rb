class IngredientsController < ApplicationController


def show
    @ingredient = Ingredient.find(params[:id])
  end

    def new
    @ingredient = Ingredient.new
  end


  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
    redirect_to root_path
    else
      render :new
    end
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :measurement, :image_url)
  end

  # def about
  # end



end
