class AdminController < ApplicationController
	before_action :authenticate_admin!
	def index
	end
	def destinos
	end
	def teste
		@cara = params[:blenno];

	end
end
