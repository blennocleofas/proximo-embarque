class HomeController < ApplicationController

	def index
		
		@destinos_nacionais = Destino.all_nacionais.last(3)
		@destinos_internacionais = Destino.all_internacionais.last(3)
	end
	
	def usuario
		session[:return_to] = usuario_path
	end

	def favoritar
		@destino = Destino.where(id: params[:id]).first
		@status = false
		@motivo = nil
		
		## Verificar se existe
		if @destino.present? == false
			@status = false
			@motivo = "Destino nao encontrado"
		else
			@destino.destino_favoritos.create(user: current_user)
			@motivo = "Cadastrado com sucesso"
			@status = true
		end


		render json:  {"status" => @status,"titulo" => @motivo}
	end
	
	def desfavoritar
		@destino = Destino.find(params[:id])
		@favoritar = @destino.destino_favoritos.where(user: current_user)
		@favoritar.destroy_all
		render json: "status" == ["desfavoritar" => true]
	end
end
