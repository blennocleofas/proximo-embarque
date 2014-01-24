class AddCamposToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :fist_name, :string
    add_column :admins, :last_name, :string
  end
end
