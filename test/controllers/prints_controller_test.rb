require "test_helper"

class PrintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:test_user)
  end

  test "should have an index" do
    get prints_path
    assert_response :success
  end
end
