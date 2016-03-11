require 'test_helper'

class VasResponsesControllerTest < ActionController::TestCase
  setup do
    @vas_response = vas_responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vas_responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vas_response" do
    assert_difference('VasResponse.count') do
      post :create, vas_response: { user_id: @vas_response.user_id, value: @vas_response.value }
    end

    assert_redirected_to vas_response_path(assigns(:vas_response))
  end

  test "should show vas_response" do
    get :show, id: @vas_response
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vas_response
    assert_response :success
  end

  test "should update vas_response" do
    patch :update, id: @vas_response, vas_response: { user_id: @vas_response.user_id, value: @vas_response.value }
    assert_redirected_to vas_response_path(assigns(:vas_response))
  end

  test "should destroy vas_response" do
    assert_difference('VasResponse.count', -1) do
      delete :destroy, id: @vas_response
    end

    assert_redirected_to vas_responses_path
  end
end
