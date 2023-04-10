class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "Tu cuenta ya está registrada, ¡gracias por confiar en nosotros!"
    else
      render :new
    end
  end

  def user_params
    params.require(:user).permit(:username, :password)  
  end
end
