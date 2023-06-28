require "test_helper"

class ActivityTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_tag = activity_tags(:one)
  end

  test "should get index" do
    get activity_tags_url, as: :json
    assert_response :success
  end

  test "should create activity_tag" do
    assert_difference("ActivityTag.count") do
      post activity_tags_url, params: { activity_tag: { activity_id: @activity_tag.activity_id, tag_id: @activity_tag.tag_id } }, as: :json
    end

    assert_response :created
  end

  test "should show activity_tag" do
    get activity_tag_url(@activity_tag), as: :json
    assert_response :success
  end

  test "should update activity_tag" do
    patch activity_tag_url(@activity_tag), params: { activity_tag: { activity_id: @activity_tag.activity_id, tag_id: @activity_tag.tag_id } }, as: :json
    assert_response :success
  end

  test "should destroy activity_tag" do
    assert_difference("ActivityTag.count", -1) do
      delete activity_tag_url(@activity_tag), as: :json
    end

    assert_response :no_content
  end
end
