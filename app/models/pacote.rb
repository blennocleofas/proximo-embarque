class Pacote < ActiveRecord::Base
	has_many :pacotes_selecionados
	has_many :destinos, through: :pacotes_selecionados
end
