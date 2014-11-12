class BooksController < ApplicationController
  before_action :authenticate

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @recipes = @book.recipes
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
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
    redirect_to books_path
  end

  def destroy
  @book = Book.find(params[:id])
  @book.destroy
  redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :cuisine, :image_url)
  end

end