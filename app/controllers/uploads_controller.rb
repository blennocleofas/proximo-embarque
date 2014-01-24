class UploadsController < ApplicationController

	def index
		@upload = Upload.new
		@ups = Upload.all
		
	end

	def show
		@upload = Upload.find(params[:id])
	end

	def tags
		if params[:id].present?
			@tags = Cloudinary::Api.resources_by_tag(params[:id])
		else
			@tags = Cloudinary::Api.tags
		end
		render json: @tags
	end
	
	def tag
		@tag = Cloudinary::Api.resources_by_tag(params[:id])
		render json: @tag
	end

	def imagens
		if params[:id].present?
			@imagens = Cloudinary::Api.resources(:type => :upload, :next_cursor => params[:id])
		else
			@imagens = Cloudinary::Api.resources(:type => :upload)
		end
		render json: @imagens
	end

	def create
		
		@upload = Upload.new(upload_params)

		if @upload.save
			redirect_to index
		else
			render index
		end
		
	end

	private

	  def upload_params
	    params.require(:upload).permit(:capa)
	  end
end
