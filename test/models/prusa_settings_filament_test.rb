require "test_helper"

class PrusaSettingsFilamentTest < ActiveSupport::TestCase
  test "should not save without a user" do
    settings = PrusaSettingsFilament.new
    assert_not settings.save
  end

  test "should save with a user and not much else" do
    sign_in users(:test_user)
    settings = users(:test_user).prusa_settings_filaments.build
    assert settings.save
  end
end
