class SessionsController < ApplicationController
  skip_before_filter :authorize
  def new
  end

  def create
    if u = User.authenticate(params[:name], params[:password])
      session[:user_id] = u.id
      redirect_to posts_path
    else
      redirect_to login_url, :alert => "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil 
    redirect_to display_url, :notice => "Logged out"
  end
end
