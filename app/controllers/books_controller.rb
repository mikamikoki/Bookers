class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
     redirect_to book_path(book.id)
    else
     render :new
    end
  end

  private
  def book_params
    params.permit(:title, :body)
  end

  def edit
  end

  def destroy
     book = book.find(params[:id])
    book.destroy
    redirect_to book_path(book.id)
  end

end