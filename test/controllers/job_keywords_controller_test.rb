require 'test_helper'

class JobKeywordsControllerTest < ActionController::TestCase
  setup do
    @job_keyword = job_keywords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_keywords)
  end

  test "should create job_keyword" do
    assert_difference('JobKeyword.count') do
      post :create, job_keyword: { job_id: @job_keyword.job_id, keyword_id: @job_keyword.keyword_id }
    end

    assert_response 201
  end

  test "should show job_keyword" do
    get :show, id: @job_keyword
    assert_response :success
  end

  test "should update job_keyword" do
    put :update, id: @job_keyword, job_keyword: { job_id: @job_keyword.job_id, keyword_id: @job_keyword.keyword_id }
    assert_response 204
  end

  test "should destroy job_keyword" do
    assert_difference('JobKeyword.count', -1) do
      delete :destroy, id: @job_keyword
    end

    assert_response 204
  end
end
