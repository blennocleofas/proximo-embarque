class SessionsController < ApplicationController
	def create
	    user = User.from_omniauth(env["omniauth.auth"])
	    session[:user_id] = user.id
	    redirect_to  request.env['omniauth.origin'] || session[:return_to] 
	  end

	  def destroy
	    session[:user_id] = nil
	    redirect_to root_url
	  end
end
