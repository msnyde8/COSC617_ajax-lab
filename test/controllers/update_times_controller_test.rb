require 'test_helper'

class UpdateTimesControllerTest < ActionController::TestCase
  setup do
    @update_time = update_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:update_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create update_time" do
    assert_difference('UpdateTime.count') do
      post :create, update_time: {  }
    end

    assert_redirected_to update_time_path(assigns(:update_time))
  end

  test "should show update_time" do
    get :show, id: @update_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @update_time
    assert_response :success
  end

  test "should update update_time" do
    patch :update, id: @update_time, update_time: {  }
    assert_redirected_to update_time_path(assigns(:update_time))
  end

  test "should destroy update_time" do
    assert_difference('UpdateTime.count', -1) do
      delete :destroy, id: @update_time
    end

    assert_redirected_to update_times_path
  end
end
