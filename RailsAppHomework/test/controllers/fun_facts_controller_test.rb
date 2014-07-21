require 'test_helper'

class FunFactsControllerTest < ActionController::TestCase
  setup do
    @fun_fact = fun_facts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fun_facts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fun_fact" do
    assert_difference('FunFact.count') do
      post :create, fun_fact: {  }
    end

    assert_redirected_to fun_fact_path(assigns(:fun_fact))
  end

  test "should show fun_fact" do
    get :show, id: @fun_fact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fun_fact
    assert_response :success
  end

  test "should update fun_fact" do
    patch :update, id: @fun_fact, fun_fact: {  }
    assert_redirected_to fun_fact_path(assigns(:fun_fact))
  end

  test "should destroy fun_fact" do
    assert_difference('FunFact.count', -1) do
      delete :destroy, id: @fun_fact
    end

    assert_redirected_to fun_facts_path
  end
end
