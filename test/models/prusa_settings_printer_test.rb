require "test_helper"

class PrusaSettingsPrinterTest < ActiveSupport::TestCase
  test "should not save without a user" do
    settings = PrusaSettingsPrinter.new
    assert_not settings.save
  end

  test "should save with a user and not much else" do
    settings = users(:test_user).prusa_settings_printers.build
    assert settings.save
  end
end
