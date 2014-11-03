class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

#   def show
#     @ingedient = Ingredient.find(params[:id])
#   end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to '/ingredients'
    else
      render :new
    end
  end

#   def edit
#     @ingredient = Ingredient.find(params[:id])
#   end

#   def update
#     @ingredient = Ingredient.find(params[:id])
#     @ingredient.update(book_params)
#     redirect_to '/books'
#   end

#   def destroy
#     @book = Book.find(params[:id])
#     @book.destroy
#     redirect_to '/books'
#   end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end


end