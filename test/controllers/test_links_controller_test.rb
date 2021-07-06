require 'test_helper'

class TestLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_link = test_links(:one)
  end

  test "should get index" do
    get test_links_url, as: :json
    assert_response :success
  end

  test "should create test_link" do
    assert_difference('TestLink.count') do
      post test_links_url, params: { test_link: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show test_link" do
    get test_link_url(@test_link), as: :json
    assert_response :success
  end

  test "should update test_link" do
    patch test_link_url(@test_link), params: { test_link: {  } }, as: :json
    assert_response 200
  end

  test "should destroy test_link" do
    assert_difference('TestLink.count', -1) do
      delete test_link_url(@test_link), as: :json
    end

    assert_response 204
  end
end
