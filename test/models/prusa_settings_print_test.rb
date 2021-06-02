require "test_helper"

class PrusaSettingsPrintTest < ActiveSupport::TestCase
  test "should not save without a user" do
    settings = PrusaSettingsPrint.new
    assert_not settings.save
  end

  test "should save wiht a user and not much else" do
    settings = users(:test_user).prusa_settings_prints.build
    assert settings.save
  end
end
