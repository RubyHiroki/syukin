require 'test_helper'

class MoneysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get moneys_index_url
    assert_response :success
  end

  test "should get create" do
    get moneys_create_url
    assert_response :success
  end

  test "should get new" do
    get moneys_new_url
    assert_response :success
  end

  test "should get update" do
    get moneys_update_url
    assert_response :success
  end

  test "should get edit" do
    get moneys_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get moneys_destroy_url
    assert_response :success
  end

  test "should get show" do
    get moneys_show_url
    assert_response :success
  end

end
