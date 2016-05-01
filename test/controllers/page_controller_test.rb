require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get groups" do
    get :groups
    assert_response :success
  end

  test "should get classes" do
    get :classes
    assert_response :success
  end

  test "should get admin_groups" do
    get :admin_groups
    assert_response :success
  end

  test "should get admin_classes" do
    get :admin_classes
    assert_response :success
  end

end
