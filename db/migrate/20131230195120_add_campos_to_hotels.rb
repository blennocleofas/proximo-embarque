class AddCamposToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :foto, :string
    add_column :hotels, :entrada, :string
    add_column :hotels, :saida, :string
    add_column :hotels, :tipo, :string
    add_column :hotels, :regime_alimentacao, :string
    add_column :hotels, :cortesia, :string
    add_column :hotels, :tarifa, :string
    add_column :hotels, :taxa, :string
  end
end
