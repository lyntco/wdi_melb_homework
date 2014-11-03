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
			redirect_to ingredient_path
		else
			render :new
		end
	end

	def edit
		@ingredient = Ingredient.find(params[:id])
	end

	def update
		@ingredient = Ingredient.find(params[:id])
		@ingredient.update(book_params)
		redirect_to ingredient_path
	end

	def destroy
		@ingredient = Ingredient.find(params[:id])
		@ingredient.destroy
		redirect_to recipe_path
	end

	private

	def ingredient_params
		params.require(:ingredient).permit(:name, :measurement, :cost, :image_url)
	end

end