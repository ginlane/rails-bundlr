# This migration comes from bundlr (originally 20130627155054)
class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
  	add_index :bundlr_users, :email, unique: true
  end
end
