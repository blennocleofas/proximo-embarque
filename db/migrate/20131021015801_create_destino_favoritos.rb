class CreateDestinoFavoritos < ActiveRecord::Migration
  def change
    create_table :destino_favoritos do |t|
      t.references :user, index: true
      t.references :destino, index: true

      t.timestamps
    end
  end
end
