require "test_helper"

class PrintTest < ActiveSupport::TestCase
  setup do
    @user = User.first
  end

  test "print should not save without a user" do
    print = Print.new
    assert_not print.save
  end

  test "print should not save with no settings" do
    print = @user.prints.build(file: "test file", success: false)
    assert_not print.save
  end

  test "print should require a file description/link" do
    print = @user.prints.build(settings: "some test settigns", success: false)
    assert_not print.save
  end

  test "print should requrie a success or failure mark" do
    print = @user.prints.build(file: "a test file", settings: "some test settigns")
    assert_not print.save
  end

  test "print should require a spool" do
    print = @user.prints.build(settings: "some test settings", file: "some test file", success: true)
    assert_not print.save
  end

  test "print should save with a user and valid inputs" do
    print = @user.prints.build(settings: "some test settings", file: "some test file", success: true, spool: spools(:test_spool), print_name: "test print", description: "test description")
    assert print.save
  end
end
