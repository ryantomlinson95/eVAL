require 'test_helper'

class EvalsControllerTest < ActionController::TestCase
  setup do
    @eval = evals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eval" do
    assert_difference('Eval.count') do
      post :create, eval: { group_id: @eval.group_id, user_id: @eval.user_id }
    end

    assert_redirected_to eval_path(assigns(:eval))
  end

  test "should show eval" do
    get :show, id: @eval
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eval
    assert_response :success
  end

  test "should update eval" do
    patch :update, id: @eval, eval: { group_id: @eval.group_id, user_id: @eval.user_id }
    assert_redirected_to eval_path(assigns(:eval))
  end

  test "should destroy eval" do
    assert_difference('Eval.count', -1) do
      delete :destroy, id: @eval
    end

    assert_redirected_to evals_path
  end
end
