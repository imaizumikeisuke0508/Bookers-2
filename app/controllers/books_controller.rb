class BooksController < ApplicationController
  def new
    @book_image = Book.new
  end

  def create
    @book_image = Book.new(book_image_params)
    @book_image.user_id = current_user.id
    @book_image.save
    redirect_to books_path

  end

  def index
    @book_images = Book.all
  end

  def show
  end

  def edit
  end

  private

  def book_image_params
    params.require(:book).permit(:book_name, :image, :caption)
  end

end
