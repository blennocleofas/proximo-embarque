class AddSinfosToDestinos < ActiveRecord::Migration
  def change
    add_column :destinos, :sinfo_title, :string
    add_column :destinos, :sinfo_subtitle, :string
    add_column :destinos, :sinfo_tipo, :string
    add_column :destinos, :sinfo_categoria, :string
    add_column :destinos, :sinfo_price, :string
    add_column :destinos, :sinfo_desc, :string
  end
end
