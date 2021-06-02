require "test_helper"

class PrinterTest < ActiveSupport::TestCase
  setup do
    sign_in users(:test_user)
    @valid_params = {
      name: "test printer",
      manufacturer: "test manufacturer",
      model: "test printer"
    }
  end

  test "should not be able to create a printer without a user" do
    sign_out users(:test_user)
    printer = Printer.new

    assert_not printer.save
  end

  test "should not be able to save without valid parameters" do
    printer = users(:test_user).printers.build

    assert_not printer.save
  end
end
