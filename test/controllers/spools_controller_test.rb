require "test_helper"

class SpoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:test_user)
  end

  test "should have an index" do
    get spools_path
    assert_response :success
  end

  test "should have a page for creating new spools" do
    get new_spool_path
    assert_response :success
  end

  test "should create a new spool" do
    post spools_path, params: {spool: {rfid: "test rfid", material: "pla", manufacturer: "hatchbox", purchased: Date.today}}
    assert_response :redirect #on a successful create redirects to the mainto the index page
  end

  test "should stay on the page if validation doesn't pass" do
    post spools_path, params: {spool: {rfid: "one"}}
    assert_response :success
  end

  test "should have an edit page" do
    get edit_spool_path(Spool.first[:id])
    assert_response :success
  end

  test "should be able to patch a spool" do
    patch spool_path(Spool.first[:id]), params: {spool: {rfid: "new rfid", material: "pla", manufacturer: "hatchbox", purchased: Date.today}}
    assert_response :redirect
  end

  test "should stay on page if validation doesn't pass" do
    patch spool_path(Spool.first[:id]), params: {spool: {rfid: "fail"}}
    assert_response :success
  end

  test "should be able to put a spool" do
    put spool_path(Spool.first[:id]), params: {spool: {rfid: "antoher new rfid", material: "pla", manufacturer: "hatchbox", purchased: Date.today}}
    assert_response :redirect
  end

  test "should stay on page if validataion doesn't pass" do
    put spool_path(Spool.first[:id]), params: {spool: {rfid: ""}}
    assert_response :success
  end

  test "should be able to delete a spool" do
    delete spool_path(Spool.first[:id])
    assert_response :redirect
  end
end
