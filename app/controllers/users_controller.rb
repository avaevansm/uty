class UsersController < ApplicationController
  def index
    @users = Users.all
  end


  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to #homepage
        notice: 'Welcome to Uptown Yoga'
      else
        render :new
      end
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_conformation)
    #code
  end

end
