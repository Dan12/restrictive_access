class SessionsController < ApplicationController
   
  def signin
    render "signin"
  end
  
  def create
    u = User.find_by_username(params["username"])
    if u && u.authenticate(params["password"])
      session["user_id"] = u.id
      redirect_to "/users/#{u.id}"
    else
      redirect_to "/signin"
    end
  end
  
  def destroy
    reset_session
    redirect_to "/"
  end
end