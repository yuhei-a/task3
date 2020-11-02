class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end


  private
  def book_params
    params.require(:book).permit(:title,:body).merge(user_id: current_user.id)
  end
end
