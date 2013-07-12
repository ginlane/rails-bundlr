# This migration comes from bundlr (originally 20130626225128)
class CreateBundlrUsers < ActiveRecord::Migration
  def change
    create_table :bundlr_users do |t|
      t.string :email

      t.timestamps
    end
  end
end
