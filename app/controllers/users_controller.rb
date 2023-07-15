class UsersController < ApplicationController
  def edit
    user = User.find(params[:id])
    unless user.id == current_user.id
    redirect_to user_path(user.id)
    end
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

private

def user_params
 params.require(:user).permit(:name, :introduction)
end

end

