require 'test_helper'

class OpinionControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
