require 'test_helper'

class ScoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scores_index_url
    assert_response :success
  end

  test "should get show" do
    get scores_show_url
    assert_response :success
  end

  test "should get new" do
    get scores_new_url
    assert_response :success
  end

  test "should get edit" do
    get scores_edit_url
    assert_response :success
  end

  test "should get create" do
    get scores_create_url
    assert_response :success
  end

  test "should get update" do
    get scores_update_url
    assert_response :success
  end

  test "should get delete" do
    get scores_delete_url
    assert_response :success
  end

end
