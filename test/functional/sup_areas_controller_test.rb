require 'test_helper'

class SupAreasControllerTest < ActionController::TestCase
  setup do
    @sup_area = sup_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sup_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sup_area" do
    assert_difference('SupArea.count') do
      post :create, sup_area: { compromiso_iniciativas: @sup_area.compromiso_iniciativas, compromiso_reduccion: @sup_area.compromiso_reduccion, nombre: @sup_area.nombre }
    end

    assert_redirected_to sup_area_path(assigns(:sup_area))
  end

  test "should show sup_area" do
    get :show, id: @sup_area
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sup_area
    assert_response :success
  end

  test "should update sup_area" do
    put :update, id: @sup_area, sup_area: { compromiso_iniciativas: @sup_area.compromiso_iniciativas, compromiso_reduccion: @sup_area.compromiso_reduccion, nombre: @sup_area.nombre }
    assert_redirected_to sup_area_path(assigns(:sup_area))
  end

  test "should destroy sup_area" do
    assert_difference('SupArea.count', -1) do
      delete :destroy, id: @sup_area
    end

    assert_redirected_to sup_areas_path
  end
end
