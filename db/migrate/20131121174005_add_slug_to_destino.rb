class AddSlugToDestino < ActiveRecord::Migration
  def change
  	add_column :destinos, :slug, :string
  	add_index  :destinos, :slug, unique: true
  end
end
