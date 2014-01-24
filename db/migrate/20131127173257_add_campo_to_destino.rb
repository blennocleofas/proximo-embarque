class AddCampoToDestino < ActiveRecord::Migration
  def change
    add_column :destinos, :foto_capa, :string
  end
end
