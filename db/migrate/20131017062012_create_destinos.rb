class CreateDestinos < ActiveRecord::Migration
  def change
    create_table :destinos do |t|
      t.string :title
      t.string :desc
      t.string :dias

      t.timestamps
    end
  end
end
