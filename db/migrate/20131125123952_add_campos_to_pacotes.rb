class AddCamposToPacotes < ActiveRecord::Migration
  def change
    add_column :pacotes, :dias, :string
    add_column :pacotes, :noite, :string
    add_column :pacotes, :cidade_origem, :string
    add_column :pacotes, :cidade_destino, :string
    add_column :pacotes, :aereo, :boolean
    add_column :pacotes, :hotel, :string
    add_column :pacotes, :seguro_viagem, :boolean
    add_column :pacotes, :cafe, :boolean
    add_column :pacotes, :aeroporto_ori, :string
    add_column :pacotes, :aeroporto_dest, :string
    add_column :pacotes, :desc, :text
  end
end
