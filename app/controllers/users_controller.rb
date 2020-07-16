class UsersController < ApplicationController

  def index
    @user = User.new
  end

  def top
  end

	def show
	end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    if @user.update(user_params)
    redirect_to books_path
  else
    @users=Users.all
    render 'index'
  end
  end

  private
   
  def user_params
    params.require(:user).permit(:name, :introduction)
  end
end
