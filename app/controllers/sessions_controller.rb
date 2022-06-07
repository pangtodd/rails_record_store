class SessionsController < ApplicationController
  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      flash[:notice] = "you're signed in and we're watching you"
      session[:user_id] = @user.id
      redirect_to "/"
    else
      flash[:alert] = "Way to go, you didn't do it right. Try again."
      redirect_to signin_path
    end
  end

  def destroy
    session[:user_id]=nil
    flash[:notice]= "No! You left us!"
    redirect_to "/"
  end
end