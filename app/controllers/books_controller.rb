class BooksController < ApplicationController

  def new
    @book = Book.new
  end
  
  def create
    @book = Book.create(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    @book.update
    redirect_to book_path(@book.id)
  end
  
  def index
    @books = Book.all
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def destroy
  end

private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end