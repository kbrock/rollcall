require 'test_helper'

class StatusesControllerTest < ActionController::TestCase
  setup do
    @status = create(:status)
    @user = @status.user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statuses)
  end

  test "should get new" do
    login_as @user
    get :new
    assert_response :success
  end

  test "should create status" do
    login_as @user
    assert_difference('Status.count') do
      post :create, status: { body: "new status" }
    end

    assert_redirected_to status_path(assigns(:status))
  end

  test "should show status" do
    get :show, id: @status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status
    assert_response :success
  end

  test "should update status" do
    patch :update, id: @status, status: { body: "new body"}
    updated_status = assigns(:status)
    assert_equal "new body", updated_status.body
    assert_redirected_to status_path(updated_status)
  end

  test "should destroy status" do
    assert_difference('Status.count', -1) do
      delete :destroy, id: @status
    end

    assert_redirected_to statuses_path
  end
end
