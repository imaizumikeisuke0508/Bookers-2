class UsersController < ApplicationController
  def edit
  end

  def show
    @user = User.find(params[:id])
    @book_image = @user.book_images
  end
end
