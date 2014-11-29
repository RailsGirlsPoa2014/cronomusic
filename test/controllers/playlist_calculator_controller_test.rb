require 'test_helper'

class PlaylistCalculatorControllerTest < ActionController::TestCase
  test "should get time" do
    get :time
    assert_response :success
  end

  test "should get playlist" do
    get :playlist
    assert_response :success
  end

end
