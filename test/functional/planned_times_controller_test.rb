require 'test_helper'

class PlannedTimesControllerTest < ActionController::TestCase
  setup do
    @planned_time = planned_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planned_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create planned_time" do
    assert_difference('PlannedTime.count') do
      post :create, planned_time: { hours: @planned_time.hours, when: @planned_time.when }
    end

    assert_redirected_to planned_time_path(assigns(:planned_time))
  end

  test "should show planned_time" do
    get :show, id: @planned_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @planned_time
    assert_response :success
  end

  test "should update planned_time" do
    put :update, id: @planned_time, planned_time: { hours: @planned_time.hours, when: @planned_time.when }
    assert_redirected_to planned_time_path(assigns(:planned_time))
  end

  test "should destroy planned_time" do
    assert_difference('PlannedTime.count', -1) do
      delete :destroy, id: @planned_time
    end

    assert_redirected_to planned_times_path
  end
end
