class PacotesSelecionado < ActiveRecord::Base
  belongs_to :destino
  belongs_to :pacote
end
