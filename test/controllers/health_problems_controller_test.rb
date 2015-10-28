require 'test_helper'

class HealthProblemsControllerTest < ActionController::TestCase
  setup do
    @health_problem = health_problems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:health_problems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create health_problem" do
    assert_difference('HealthProblem.count') do
      post :create, health_problem: { dateEntered: @health_problem.dateEntered, dateOccurred: @health_problem.dateOccurred, description: @health_problem.description, petID: @health_problem.petID }
    end

    assert_redirected_to health_problem_path(assigns(:health_problem))
  end

  test "should show health_problem" do
    get :show, id: @health_problem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @health_problem
    assert_response :success
  end

  test "should update health_problem" do
    patch :update, id: @health_problem, health_problem: { dateEntered: @health_problem.dateEntered, dateOccurred: @health_problem.dateOccurred, description: @health_problem.description, petID: @health_problem.petID }
    assert_redirected_to health_problem_path(assigns(:health_problem))
  end

  test "should destroy health_problem" do
    assert_difference('HealthProblem.count', -1) do
      delete :destroy, id: @health_problem
    end

    assert_redirected_to health_problems_path
  end
end
