class UsersController < ApplicationController
  def index  
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, notice: 'Registration successful.'
    else
      render :new
    end
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user

    if @user.update_attributes(user_params)
      redirect_to root_url, notice: 'Successfully updated profile.'
    else
      render :edit
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit!
  end
end
