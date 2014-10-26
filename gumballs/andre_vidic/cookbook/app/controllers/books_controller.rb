class BooksController < ApplicationController

  def index
    @books = Book.all
  end


  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to root_path, :notice => 'new book has been successfully created'
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
    redirect_to book_path(@book.id)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to root_path
  end

private

def book_params
  params.require(:book).permit(:title, :cuisine, :image_url)
end

end