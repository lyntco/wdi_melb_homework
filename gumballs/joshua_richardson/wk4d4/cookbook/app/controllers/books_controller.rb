class BooksController < ApplicationController

  def show
    @book = Book.find(params[:id])
    @recipes = @book.recipes
  end

  def new
    @book = Book.new # we use this so that rails knows its a new, empty object
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to '/'
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to '/'
    else
      render :new
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to '/'
  end

  private

  def book_params
    params.require(:book).permit(:title, :cuisine, :image_url) # require is used to grab within that hash as it is one level down
  end

end