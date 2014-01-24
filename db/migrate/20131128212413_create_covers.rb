class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.string :img
      t.string :x
      t.string :y
      t.string :h
      t.string :w
      t.references :destino, index: true

      t.timestamps
    end
  end
end
