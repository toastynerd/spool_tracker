require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "user should have an email" do
    user = User.new
    assert_not user.save, "Saved user without email"
  end

  test "user should have a password" do
    user = User.new(email: "test@example.com")
    assert_not user.save, "Saved user without password"
  end

  test "user should save not save without password confirmation" do
    user = User.new(email: "test@example.com", password: "testtesttest")
    assert_not user.save, "Saved user without confirmation"
  end

  test "user should have a minimum password length of 8" do
    user = User.new(email: "test@example.com", password: "test", password_confirmation: "test")
    assert_not user.save, "Saved with too small of a password"
  end

  test "User should save with valid parameters" do
    user = User.new(email: "test@example.com", password: "testtest", password_confirmation: "testtest")
    assert user.save, "Could not save valid user"
  end
end
