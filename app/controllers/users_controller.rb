class UsersController < ApplicationController
  
  def index
  end 
  
  def show
    @user = User.find(params[:id])
    @book = @user.books
  end 
  
  def edit
    @user = User.find(paarms[:id])
  end 
  
  def update
  end 
  
  private
  
  def user_params
  params.require(:user).permit(:name, :introduction)
  end
  
  
end
