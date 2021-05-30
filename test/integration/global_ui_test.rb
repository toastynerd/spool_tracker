require "test_helper"

class GlobalUiTest < ActionDispatch::IntegrationTest
  test "it should not have a log out button with no sign in" do
    get "/"
    assert_select "a", {count: 0, text: "Log Out"}, "should not have a log out button"
  end

  test "signed in user has name displayed" do
    sign_in users(:test_user)

    get "/"
    assert_select "span", "normaltestuser@example.com"
  end

  test "signed in user has log out button" do
    sign_in users(:test_user)

    get "/"
    assert_select "a", "Log Out"
  end
end
