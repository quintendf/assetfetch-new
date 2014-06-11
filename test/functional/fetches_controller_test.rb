require 'test_helper'

class FetchesControllerTest < ActionController::TestCase
  setup do
    @fetch = fetches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fetches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fetch" do
    assert_difference('Fetch.count') do
      post :create, fetch: { cc: @fetch.cc, deadline: @fetch.deadline, recipient: @fetch.recipient, title: @fetch.title }
    end

    assert_redirected_to fetch_path(assigns(:fetch))
  end

  test "should show fetch" do
    get :show, id: @fetch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fetch
    assert_response :success
  end

  test "should update fetch" do
    put :update, id: @fetch, fetch: { cc: @fetch.cc, deadline: @fetch.deadline, recipient: @fetch.recipient, title: @fetch.title }
    assert_redirected_to fetch_path(assigns(:fetch))
  end

  test "should destroy fetch" do
    assert_difference('Fetch.count', -1) do
      delete :destroy, id: @fetch
    end

    assert_redirected_to fetches_path
  end
end
