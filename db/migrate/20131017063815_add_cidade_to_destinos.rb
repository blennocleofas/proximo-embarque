class AddCidadeToDestinos < ActiveRecord::Migration
  def change
    add_column :destinos, :cidade, :string
  end
end
