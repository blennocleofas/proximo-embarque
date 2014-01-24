class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def current_user
    us = User.where(id: session[:user_id]).first
  	if us.present?
    	@current_user ||= us if session[:user_id]
	  end
  end
  def destino_favorito(dst)
    if current_user.nil?
      false
    elsif dst.users.where(id: current_user.id).nil?
      false
    elsif dst.users.where(id: current_user.id).first.present?
      true
    end
  end


  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || webapp_path
  end

  def after_sign_out_path_for(resource_or_scope)
    webapp_path
  end

  helper_method :current_user, :destino_favorito
end