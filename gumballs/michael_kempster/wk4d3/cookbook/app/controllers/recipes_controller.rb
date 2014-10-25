class RecipesController < ApplicationController

	def show
		@recipes = Recipe.where(:book_id => params[:id])
		#binding.pry
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(recipe_params)

		if @recipe.save
			redirect_to recipe_path
		else
			render :new
		end
	end

	def edit
		@recipe = Recipe.find(params[:id])
	end

	def update
		@recipe = Recipe.find(params[:id])
		@recipe.update(recipe_params)
		redirect_to recipe_path
	end

	def destroy
		@recipe = Recipe.find(params[:id])
		@recipe.destroy
		redirect_to book_path
	end

	private

	def recipe_params
		params.require(:recipe).permit(:name, :course, :cooktime, :servicesize, :instructions, :image)
	end

end