class UserController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "welcome to our cult."
      session[:user_id]= @user.id
      redirect_to "/"
    else
      flash[:alert] = "You screwed that up. Try again"
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end