class AddFotoToDestinos < ActiveRecord::Migration
  def change
  	add_column :destinos, :fotoid, :string
  end
end
