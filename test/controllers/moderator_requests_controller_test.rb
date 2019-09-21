require 'test_helper'

class ModeratorRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moderator_request = moderator_requests(:one)
  end

  test "should get index" do
    get moderator_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_moderator_request_url
    assert_response :success
  end

  test "should create moderator_request" do
    assert_difference('ModeratorRequest.count') do
      post moderator_requests_url, params: { moderator_request: {  } }
    end

    assert_redirected_to moderator_request_url(ModeratorRequest.last)
  end

  test "should show moderator_request" do
    get moderator_request_url(@moderator_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_moderator_request_url(@moderator_request)
    assert_response :success
  end

  test "should update moderator_request" do
    patch moderator_request_url(@moderator_request), params: { moderator_request: {  } }
    assert_redirected_to moderator_request_url(@moderator_request)
  end

  test "should destroy moderator_request" do
    assert_difference('ModeratorRequest.count', -1) do
      delete moderator_request_url(@moderator_request)
    end

    assert_redirected_to moderator_requests_url
  end
end
