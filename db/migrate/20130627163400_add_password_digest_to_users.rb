class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :bundlr_users, :password_digest, :string
  end
end
