class UsersController < ApplicationController

  def index
    @user = User.all
  end
  
  def create
   #raise params.to_yaml
   @user = User.create(params[:user])
   if @user.save
     redirect_to users_path

   else
     redirect_to new_user_path
   end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    User.find(params[:id]).destroy
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to users_path
  end

end
