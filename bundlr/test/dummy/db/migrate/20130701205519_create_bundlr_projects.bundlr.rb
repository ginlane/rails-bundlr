# This migration comes from bundlr (originally 20130701195754)
class CreateBundlrProjects < ActiveRecord::Migration
  def change
    create_table :bundlr_projects do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
    add_index :bundlr_projects, [:user_id, :created_at]
  end
end
