class AddTipoToDestinos < ActiveRecord::Migration
  def change
    add_column :destinos, :tipo, :string
  end
end
