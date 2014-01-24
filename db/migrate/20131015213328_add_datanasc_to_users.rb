class AddDatanascToUsers < ActiveRecord::Migration
  def change
    add_column :users, :datanasc, :string
  end
end
