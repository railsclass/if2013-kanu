require 'test_helper'

class WatercoursesControllerTest < ActionController::TestCase
  setup do
    @watercourse = watercourses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:watercourses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create watercourse" do
    assert_difference('Watercourse.count') do
      post :create, watercourse: { name: @watercourse.name }
    end

    assert_redirected_to watercourse_path(assigns(:watercourse))
  end

  test "should show watercourse" do
    get :show, id: @watercourse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @watercourse
    assert_response :success
  end

  test "should update watercourse" do
    patch :update, id: @watercourse, watercourse: { name: @watercourse.name }
    assert_redirected_to watercourse_path(assigns(:watercourse))
  end

  test "should destroy watercourse" do
    assert_difference('Watercourse.count', -1) do
      delete :destroy, id: @watercourse
    end

    assert_redirected_to watercourses_path
  end
end
