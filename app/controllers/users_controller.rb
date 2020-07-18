class UsersController < ApplicationController

  def index
    @user = User.new
  end

  def top
  end

	def show
    @book=Book.find(params[:id])
	end

  def about
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to books_path
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:profile_image,:name, :introduction)
  end
end
