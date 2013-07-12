class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
  	add_index :bundlr_users, :email, unique: true
  end
end
