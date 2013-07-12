require 'test_helper'

module Bundlr
  class UsersControllerTest < ActionController::TestCase
    test "should get new" do
      get :new
      assert_response :success
    end
  
  end
end
