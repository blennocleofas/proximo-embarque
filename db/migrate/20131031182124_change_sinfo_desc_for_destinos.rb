class ChangeSinfoDescForDestinos < ActiveRecord::Migration
  
  def change
  	 change_table :destinos do |t|
      t.change :sinfo_desc, :text
    end
  end
end
