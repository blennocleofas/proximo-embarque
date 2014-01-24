class Upload < ActiveRecord::Base
	mount_uploader :capa, CapaUploader
end
