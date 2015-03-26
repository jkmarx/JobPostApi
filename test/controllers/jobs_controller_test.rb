require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { category: @job.category, company: @job.company, description: @job.description, location_id: @job.location_id, name: @job.name, position_type: @job.position_type }
    end

    assert_response 201
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should update job" do
    put :update, id: @job, job: { category: @job.category, company: @job.company, description: @job.description, location_id: @job.location_id, name: @job.name, position_type: @job.position_type }
    assert_response 204
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_response 204
  end
end
