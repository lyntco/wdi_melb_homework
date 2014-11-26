class BooksController < ApplicationController

def index
  @books = Book.all
end

def new
  @book = Book.new
end

def create
  @book = Book.new(book_params)
  if @book.save
    redirect_to(root_path)
  else
    render :new
  end
end

def show
  @book = Book.find(params[:id])
  @recipes = @book.recipes
end

 def edit
    @book = Book.find(params[:id])
  end

def update
  @book = Book.find(params[:id])
end

private

def book_params
  params.require(:book).permit(:title, :cuisine, :chef, :image_url)
end

end