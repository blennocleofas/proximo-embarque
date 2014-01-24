class RenameFistNameToFirstNameToAdmin < ActiveRecord::Migration
  def change
  	change_table :admins do |t|
  	  t.rename :fist_name, :first_name
  	end
  end
end
