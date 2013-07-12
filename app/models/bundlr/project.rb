# == Schema Information
#
# Table name: bundlr_projects
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

module Bundlr
  class Project < ActiveRecord::Base
    attr_accessible :title

    belongs_to :user

    validates :user_id, presence: true
    validates :title, length: { maximum: 15 }
    
    default_scope order: 'bundlr_projects.created_at DESC'
  end
end
