# == Schema Information
#
# Table name: bundlr_users
#
#  id                  :integer          not null, primary key
#  email               :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  password_digest     :string(255)
#  remember_token      :string(255)
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

require 'test_helper'

module Bundlr
  class UserTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
  end
end
