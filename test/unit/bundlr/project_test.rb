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

require 'test_helper'

module Bundlr
  class ProjectTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
  end
end
