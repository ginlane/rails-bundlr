# This migration comes from bundlr (originally 20130627163400)
class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :bundlr_users, :password_digest, :string
  end
end
