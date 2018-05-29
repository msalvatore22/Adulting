require 'test_helper'

class TravelControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get travel_index_url
    assert_response :success
  end

  test "should get show" do
    get travel_show_url
    assert_response :success
  end

  test "should get new" do
    get travel_new_url
    assert_response :success
  end

  test "should get edit" do
    get travel_edit_url
    assert_response :success
  end

  test "should get create" do
    get travel_create_url
    assert_response :success
  end

  test "should get update" do
    get travel_update_url
    assert_response :success
  end

  test "should get destroy" do
    get travel_destroy_url
    assert_response :success
  end

end
