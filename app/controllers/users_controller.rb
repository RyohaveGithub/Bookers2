class UsersController < ApplicationController
	def index
	@user = User.new
	end

    def top
    end

	def new
	@user = User.new
	end

	def show
	end

    def edit
    @user = User.find(params[:id])
    end

    def update
     @user = User.find(params[:id])
     @user.update(user_params)
     redirect_to user_path(@user.id)
    end

   private
   def user_params
  params.require(:user).permit(:name, :profile_image)
   end
   end
