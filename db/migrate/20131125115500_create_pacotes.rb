class CreatePacotes < ActiveRecord::Migration
  def change
    create_table :pacotes do |t|
      t.string :titulo
      t.string :valor
      t.references :destino, index: true
      t.timestamps
    end
  end
end
