class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :capa

      t.timestamps
    end
  end
end
