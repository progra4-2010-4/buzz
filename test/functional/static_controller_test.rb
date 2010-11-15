require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_select "li", "Home"
    assert_select "li", "Register"
    assert_select "li", "About Us"
    assert_response :success
      

end

end
