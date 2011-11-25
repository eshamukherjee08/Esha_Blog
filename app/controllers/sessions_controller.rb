class SessionsController < ApplicationController
  def new
  end

  def create
    if u = User.authenticate(params[:name], params[:password])
      p "hii"
      
      session[:user_id] = u.id
      redirect_to u
    else
      #redirect_to users_path
      redirect_to login_url, :alert => "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil 
    redirect_to display_url, :notice => "Logged out"
  end
end
