class DestinoFavorito < ActiveRecord::Base
  belongs_to :user
  belongs_to :destino
end
