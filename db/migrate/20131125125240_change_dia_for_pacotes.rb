class ChangeDiaForPacotes < ActiveRecord::Migration
  def change
  	rename_column :pacotes, :noite, :noites
  end
end
