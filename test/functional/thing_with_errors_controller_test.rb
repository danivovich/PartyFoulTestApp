require 'test_helper'

class ThingWithErrorsControllerTest < ActionController::TestCase
  setup do
    @thing_with_error = thing_with_errors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thing_with_errors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thing_with_error" do
    assert_difference('ThingWithError.count') do
      post :create, thing_with_error: { name: @thing_with_error.name }
    end

    assert_redirected_to thing_with_error_path(assigns(:thing_with_error))
  end

  test "should show thing_with_error" do
    get :show, id: @thing_with_error
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thing_with_error
    assert_response :success
  end

  test "should update thing_with_error" do
    put :update, id: @thing_with_error, thing_with_error: { name: @thing_with_error.name }
    assert_redirected_to thing_with_error_path(assigns(:thing_with_error))
  end

  test "should destroy thing_with_error" do
    assert_difference('ThingWithError.count', -1) do
      delete :destroy, id: @thing_with_error
    end

    assert_redirected_to thing_with_errors_path
  end
end
