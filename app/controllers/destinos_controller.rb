class DestinosController < ApplicationController
	before_action :authenticate_admin!, :only => [ :new, :create, :edit, :update, :destroy, :index ]


	def index
		@destinos = Destino.paginate(:page => params[:page])	
	end

	def edit
		@destino = Destino.friendly.find(params[:id])
		@pacotes = @destino.pacotes
	end
	def show
		@destino = Destino.friendly.find(params[:id])
	end
	def new
		 @destino = Destino.new
	end

	def step2
		@destino = Destino.friendly.find(params[:id])
		@pacotes = @destino.pacotes
	end
	
	def update
		@destino = Destino.friendly.find(params[:id])
		if @destino.update(destino_params)
			redirect_to destinos_step2_path @destino
		else
			render 'edit'
		end
	
	end
	
	def create

		@destino = Destino.new(destino_params)
	    if @destino.save

			redirect_to destinos_step2_path @destino
		else
			render 'novo'
		end
	end



	def destroy
		@destino = Destino.find(params[:id])
		@destino.destroy
		redirect_to destino_index_path
	end

	private

	  def destino_params
	    params.require(:destino).permit(
	    	:title, :desc, :cidade, :dias, :sinfo_title, :sinfo_subtitle,
	    	:sinfo_categoria,:tipo ,:sinfo_price, :sinfo_desc, :full_text,:pacotes_selecionados)
	  end
end
