require "test_helper"

class PlatformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @platform = platforms(:one)
  end

  test "should get index" do
    get platforms_url, as: :json
    assert_response :success
  end

  test "should create platform" do
    assert_difference('Platform.count') do
      post platforms_url, params: { platform: { monthly_cost: @platform.monthly_cost, name: @platform.name, website: @platform.website } }, as: :json
    end

    assert_response 201
  end

  test "should show platform" do
    get platform_url(@platform), as: :json
    assert_response :success
  end

  test "should update platform" do
    patch platform_url(@platform), params: { platform: { monthly_cost: @platform.monthly_cost, name: @platform.name, website: @platform.website } }, as: :json
    assert_response 200
  end

  test "should destroy platform" do
    assert_difference('Platform.count', -1) do
      delete platform_url(@platform), as: :json
    end

    assert_response 204
  end
end
