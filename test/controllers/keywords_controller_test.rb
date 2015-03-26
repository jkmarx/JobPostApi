require 'test_helper'

class KeywordsControllerTest < ActionController::TestCase
  setup do
    @keyword = keywords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:keywords)
  end

  test "should create keyword" do
    assert_difference('Keyword.count') do
      post :create, keyword: { name: @keyword.name }
    end

    assert_response 201
  end

  test "should show keyword" do
    get :show, id: @keyword
    assert_response :success
  end

  test "should update keyword" do
    put :update, id: @keyword, keyword: { name: @keyword.name }
    assert_response 204
  end

  test "should destroy keyword" do
    assert_difference('Keyword.count', -1) do
      delete :destroy, id: @keyword
    end

    assert_response 204
  end
end
