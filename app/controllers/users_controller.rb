class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find params[:id]
    @tasks = @user.requesters.first.tasks
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :phone, :postcode, :password, :password_confirmation)
  end
end
