require "test_helper"

class SpoolTest < ActiveSupport::TestCase
  setup do
    @user = User.first
    @params = {rfid: "test rfid", material: "pla", manufacturer: "hatchbox", purchased: Date.today}
  end

  test "spool should not save without a user" do
    spool = Spool.new
    assert_not spool.save
  end

  test "spool should not save without rfid" do
    params = @params.clone
    params.delete(:rfid)
    spool = @user.spools.build(params)
    assert_not spool.save
  end

  test "spool should not save without a material" do
    params = @params.clone
    params.delete(:material)
    spool = @user.spools.build(params)
    assert_not spool.save
  end

  test "spool should not save without a manufacturer" do
    params = @params.clone
    params.delete(:manufacturer)
    spool = @user.spools.build(params)
    assert_not spool.save
  end

  test "spool should not save without a purchased date" do
    params = @params.clone
    params.delete(:purchased)
    spool = @user.spools.build(params)
    assert_not spool.save
  end

  test "spool should save with valid data" do
    spool = @user.spools.build(@params)
    assert spool.save
  end
end
