require "test_helper"

class UserFlowTest < ActionDispatch::IntegrationTest
  test "sign_up page exists" do
    get "/users/sign_up"
    assert_select "h2", "Sign up"
  end

  test "sign_in page exists" do
    get "/users/sign_in"
    assert_select "h2", "Log in"
  end
end
