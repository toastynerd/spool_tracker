require "test_helper"

class SpoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in users(:test_user)
    @spool_params = {rfid: "new rfid", material: "pla", manufacturer: "hatchbox", purchased: Date.today}
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
    post spools_path, params: {spool: @spool_params}
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

  test "should not be able to edit a spool that isn't thiers" do
    sign_in users(:test_user_not_owner)
    get edit_spool_path(spools(:test_spool))
    
    assert_response :unauthorized
  end

  test "should be able to patch a spool" do
    patch spool_path(Spool.first[:id]), params: {spool: @spool_params}
    assert_response :redirect
  end

  test "should stay on page if validation doesn't pass" do
    patch spool_path(Spool.first[:id]), params: {spool: {rfid: "fail"}}
    assert_response :success
  end

  test "should not be able to patch a spool that isn't theirs" do
    sign_in users(:test_user_not_owner)
    patch spool_path(spools(:test_spool)), params: {spool: @spool_params}

    assert_response :unauthorized
  end

  test "should be able to put a spool" do
    put spool_path(Spool.first[:id]), params: {spool: @spool_params}
    assert_response :redirect
  end

  test "should stay on page if validataion doesn't pass" do
    put spool_path(Spool.first[:id]), params: {spool: {rfid: ""}}
    assert_response :success
  end

  test "should not be able to put a spool that isn't theirs" do
    sign_in users(:test_user_not_owner)
    put spool_path(spools(:test_spool)), params: {spool: @spool_params}

    assert_response :unauthorized
  end

  test "should not be able to delete a spool that isn't theirs" do
    sign_in users(:test_user_not_owner)
    delete spool_path(spools(:test_spool))

    assert_response :unauthorized
  end

  test "should be able to delete a spool" do
    delete spool_path(spools(:test_spool))
    assert_response :redirect
  end
end
