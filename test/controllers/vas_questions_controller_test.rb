require 'test_helper'

class VasQuestionsControllerTest < ActionController::TestCase
  setup do
    @vas_question = vas_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vas_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vas_question" do
    assert_difference('VasQuestion.count') do
      post :create, vas_question: { order: @vas_question.order, prompt: @vas_question.prompt }
    end

    assert_redirected_to vas_question_path(assigns(:vas_question))
  end

  test "should show vas_question" do
    get :show, id: @vas_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vas_question
    assert_response :success
  end

  test "should update vas_question" do
    patch :update, id: @vas_question, vas_question: { order: @vas_question.order, prompt: @vas_question.prompt }
    assert_redirected_to vas_question_path(assigns(:vas_question))
  end

  test "should destroy vas_question" do
    assert_difference('VasQuestion.count', -1) do
      delete :destroy, id: @vas_question
    end

    assert_redirected_to vas_questions_path
  end
end
