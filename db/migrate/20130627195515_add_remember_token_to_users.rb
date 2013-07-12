class AddRememberTokenToUsers < ActiveRecord::Migration
  def change
  	add_column :bundlr_users, :remember_token, :string
  	add_index :bundlr_users, :remember_token
  end
end
