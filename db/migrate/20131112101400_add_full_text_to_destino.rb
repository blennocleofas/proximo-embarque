class AddFullTextToDestino < ActiveRecord::Migration
  def change
    add_column :destinos, :full_text, :text
  end
end
