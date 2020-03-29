class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      session[:user_id] = @user.id
      redirect_to users_role_path
    else
      render :new
    end
  end

  def role
    @user = @current_user
  end

  def update_role

  end

  def show
    @user = User.find params[:id]
    @tasks = @user.requesters.first.tasks
  end

  def edit
    @user = @current_user
  end

  def update
    @user = @current_user
    if @user.update user_params
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :phone, :postcode, :password, :password_confirmation)
  end
end
