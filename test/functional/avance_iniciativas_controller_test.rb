require 'test_helper'

class AvanceIniciativasControllerTest < ActionController::TestCase
  setup do
    @avance_iniciativa = avance_iniciativas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avance_iniciativas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avance_iniciativa" do
    assert_difference('AvanceIniciativa.count') do
      post :create, avance_iniciativa: { fecha: @avance_iniciativa.fecha, iniciativa_id: @avance_iniciativa.iniciativa_id, valor: @avance_iniciativa.valor }
    end

    assert_redirected_to avance_iniciativa_path(assigns(:avance_iniciativa))
  end

  test "should show avance_iniciativa" do
    get :show, id: @avance_iniciativa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @avance_iniciativa
    assert_response :success
  end

  test "should update avance_iniciativa" do
    put :update, id: @avance_iniciativa, avance_iniciativa: { fecha: @avance_iniciativa.fecha, iniciativa_id: @avance_iniciativa.iniciativa_id, valor: @avance_iniciativa.valor }
    assert_redirected_to avance_iniciativa_path(assigns(:avance_iniciativa))
  end

  test "should destroy avance_iniciativa" do
    assert_difference('AvanceIniciativa.count', -1) do
      delete :destroy, id: @avance_iniciativa
    end

    assert_redirected_to avance_iniciativas_path
  end
end
