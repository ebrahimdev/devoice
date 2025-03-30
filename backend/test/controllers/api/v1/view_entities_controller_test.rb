require "test_helper"

class Api::V1::ViewEntitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_view_entities_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_view_entities_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_view_entities_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_view_entities_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_view_entities_destroy_url
    assert_response :success
  end
end
