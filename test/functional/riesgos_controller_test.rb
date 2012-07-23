require 'test_helper'

class RiesgosControllerTest < ActionController::TestCase
  setup do
    @riesgo = riesgos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:riesgos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create riesgo" do
    assert_difference('Riesgo.count') do
      post :create, riesgo: { descripcion: @riesgo.descripcion, impacto: @riesgo.impacto, nemo: @riesgo.nemo, probabilidad: @riesgo.probabilidad }
    end

    assert_redirected_to riesgo_path(assigns(:riesgo))
  end

  test "should show riesgo" do
    get :show, id: @riesgo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @riesgo
    assert_response :success
  end

  test "should update riesgo" do
    put :update, id: @riesgo, riesgo: { descripcion: @riesgo.descripcion, impacto: @riesgo.impacto, nemo: @riesgo.nemo, probabilidad: @riesgo.probabilidad }
    assert_redirected_to riesgo_path(assigns(:riesgo))
  end

  test "should destroy riesgo" do
    assert_difference('Riesgo.count', -1) do
      delete :destroy, id: @riesgo
    end

    assert_redirected_to riesgos_path
  end
end
