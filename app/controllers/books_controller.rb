class BooksController < ApplicationController
  def creaat
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to books_path(@book.id)
    else
      render :index
    end
  end

  def index
    @book = Book.new
  end

  def show
  end
end
