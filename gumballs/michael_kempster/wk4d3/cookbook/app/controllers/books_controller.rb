class BooksController < ApplicationController

	def show
		@book = Book.find(params[:id])
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)

		if @book.save
			redirect_to root_path
		else
			render :new
		end
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		@book.update(book_params)
		redirect_to book_path
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to root_path
	end

	private

	def book_params
		params.require(:book).permit(:title, :cuisine, :chef, :image_url)
	end

end