require 'test_helper'

class SaySomethingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get say_something_index_url
    assert_response :success
  end

end
