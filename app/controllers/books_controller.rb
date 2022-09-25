class BooksController < ApplicationController
  def new
    @new_book = Book.new
  end

  def create
    @new_book = Book.new(book_params)
    @new_book.user_id = current_user.id
    @user = @new_book.user
    
    if @new_book.save
      flash[:notice] = "You have created book successfully."

      redirect_to book_path(@new_book.id)

    else
      @books = Book.all
      render :index
    end
  end

  def index
    @books = Book.all
    @user = current_user
    @new_book = Book.new
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
    @new_book = Book.new
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
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.permit(:title, :body)
  end

end
