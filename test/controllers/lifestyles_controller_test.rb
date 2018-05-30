require 'test_helper'

class LifestylesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lifestyles_index_url
    assert_response :success
  end

  test "should get show" do
    get lifestyles_show_url
    assert_response :success
  end

  test "should get new" do
    get lifestyles_new_url
    assert_response :success
  end

  test "should get edit" do
    get lifestyles_edit_url
    assert_response :success
  end

  test "should get create" do
    get lifestyles_create_url
    assert_response :success
  end

  test "should get update" do
    get lifestyles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get lifestyles_destroy_url
    assert_response :success
  end

end
