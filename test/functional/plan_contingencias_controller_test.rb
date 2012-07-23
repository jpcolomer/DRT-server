require 'test_helper'

class PlanContingenciasControllerTest < ActionController::TestCase
  setup do
    @plan_contingencia = plan_contingencias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plan_contingencias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plan_contingencia" do
    assert_difference('PlanContingencia.count') do
      post :create, plan_contingencia: { descripcion: @plan_contingencia.descripcion, riesgo_id: @plan_contingencia.riesgo_id }
    end

    assert_redirected_to plan_contingencia_path(assigns(:plan_contingencia))
  end

  test "should show plan_contingencia" do
    get :show, id: @plan_contingencia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plan_contingencia
    assert_response :success
  end

  test "should update plan_contingencia" do
    put :update, id: @plan_contingencia, plan_contingencia: { descripcion: @plan_contingencia.descripcion, riesgo_id: @plan_contingencia.riesgo_id }
    assert_redirected_to plan_contingencia_path(assigns(:plan_contingencia))
  end

  test "should destroy plan_contingencia" do
    assert_difference('PlanContingencia.count', -1) do
      delete :destroy, id: @plan_contingencia
    end

    assert_redirected_to plan_contingencias_path
  end
end
