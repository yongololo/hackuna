require 'test_helper'

class MyFeedbacksControllerTest < ActionController::TestCase
  setup do
    @my_feedback = my_feedbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:my_feedbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create my_feedback" do
    assert_difference('MyFeedback.count') do
      post :create, my_feedback: { content: @my_feedback.content, course_id: @my_feedback.course_id, user_id: @my_feedback.user_id }
    end

    assert_redirected_to my_feedback_path(assigns(:my_feedback))
  end

  test "should show my_feedback" do
    get :show, id: @my_feedback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @my_feedback
    assert_response :success
  end

  test "should update my_feedback" do
    patch :update, id: @my_feedback, my_feedback: { content: @my_feedback.content, course_id: @my_feedback.course_id, user_id: @my_feedback.user_id }
    assert_redirected_to my_feedback_path(assigns(:my_feedback))
  end

  test "should destroy my_feedback" do
    assert_difference('MyFeedback.count', -1) do
      delete :destroy, id: @my_feedback
    end

    assert_redirected_to my_feedbacks_path
  end
end
