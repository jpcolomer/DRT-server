require 'test_helper'

class DotacionsControllerTest < ActionController::TestCase
  setup do
    @dotacion = dotacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dotacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dotacion" do
    assert_difference('Dotacion.count') do
      post :create, dotacion: { contrato_id: @dotacion.contrato_id, empleados: @dotacion.empleados, fecha: @dotacion.fecha, gestion_dotacional: @dotacion.gestion_dotacional, nuevos_ingresos_egresos: @dotacion.nuevos_ingresos_egresos, recategorizacion: @dotacion.recategorizacion }
    end

    assert_redirected_to dotacion_path(assigns(:dotacion))
  end

  test "should show dotacion" do
    get :show, id: @dotacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dotacion
    assert_response :success
  end

  test "should update dotacion" do
    put :update, id: @dotacion, dotacion: { contrato_id: @dotacion.contrato_id, empleados: @dotacion.empleados, fecha: @dotacion.fecha, gestion_dotacional: @dotacion.gestion_dotacional, nuevos_ingresos_egresos: @dotacion.nuevos_ingresos_egresos, recategorizacion: @dotacion.recategorizacion }
    assert_redirected_to dotacion_path(assigns(:dotacion))
  end

  test "should destroy dotacion" do
    assert_difference('Dotacion.count', -1) do
      delete :destroy, id: @dotacion
    end

    assert_redirected_to dotacions_path
  end
end
