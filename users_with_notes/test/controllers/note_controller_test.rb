require 'test_helper'

class NoteControllerTest < ActionController::TestCase
  test "should get username:text" do
    get :username:text
    assert_response :success
  end

end
