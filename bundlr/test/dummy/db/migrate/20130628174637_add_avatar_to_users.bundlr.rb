# This migration comes from bundlr (originally 20130628173840)
class AddAvatarToUsers < ActiveRecord::Migration
  def change
  	add_attachment :bundlr_users, :avatar
  end
end
