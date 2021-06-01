require "test_helper"

class PrintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:test_user)
    @spool = spools(:test_spool)
    @print_params = {
      spool_id: @spool.id,
      settings: "some test settings",
      file: "test.example.com",
      success: true,
      description: "a test print",
      print_name: "test_print"
    }
  end

  test "should have an index" do
    get prints_path
    assert_response :success
  end

  test "should have a new page" do
    get new_print_path
    assert_response :success
  end

  test "should be able to create a new print" do
    post prints_path, params: {print: @print_params}
    assert_response :redirect
  end

  test "should stay on same page if it doesn't pass validations" do
    post prints_path, params: {print: {settings: ""}}
    assert_response :success
  end

  test "should have an edit route" do
    get edit_print_path(prints(:print_one))
    assert_response :success
  end

  test "should update with a patch" do
    patch print_path(prints(:print_one), {print: @print_params})
    assert_response :redirect
  end

  test "should update with a put" do
    put print_path(prints(:print_one), {print: @print_params})
    assert_response :redirect
  end

  test "should be able to destroy a print" do
    delete print_path(prints(:print_two))
    assert_response :redirect
  end
end
