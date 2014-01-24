class CreatePacotesSelecionados < ActiveRecord::Migration
  def change
    create_table :pacotes_selecionados do |t|
      t.references :destino, index: true
      t.references :pacote, index: true

      t.timestamps
    end
  end
end
