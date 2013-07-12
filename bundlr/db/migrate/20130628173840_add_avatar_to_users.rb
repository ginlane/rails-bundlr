class AddAvatarToUsers < ActiveRecord::Migration
  def change
  	add_attachment :bundlr_users, :avatar
  end
end
