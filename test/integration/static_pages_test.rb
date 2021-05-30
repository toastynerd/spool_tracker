require "test_helper"

class StaticPagesTest < ActionDispatch::IntegrationTest
  test "static welcome page" do
    get "/"
    assert_select "h1", "Welcome to Spool Tracker!"
  end

  test "sign up link" do
    get "/"
    assert_select "a", text: "Sign Up"
  end

  test "sign in link"  do
    get "/"
    assert_select "a", text: "Sign In"
  end
end
