require 'test_helper'

class TechnologyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get technology_index_url
    assert_response :success
  end

  test "should get show" do
    get technology_show_url
    assert_response :success
  end

  test "should get new" do
    get technology_new_url
    assert_response :success
  end

  test "should get edit" do
    get technology_edit_url
    assert_response :success
  end

  test "should get create" do
    get technology_create_url
    assert_response :success
  end

  test "should get update" do
    get technology_update_url
    assert_response :success
  end

  test "should get destroy" do
    get technology_destroy_url
    assert_response :success
  end

end
