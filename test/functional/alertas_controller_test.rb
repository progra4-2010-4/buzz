require 'test_helper'

class AlertasControllerTest < ActionController::TestCase
  setup do
    @alerta = alertas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alertas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alerta" do
    assert_difference('Alerta.count') do
      post :create, :alerta => @alerta.attributes
    end

    assert_redirected_to alerta_path(assigns(:alerta))
  end

  test "should show alerta" do
    get :show, :id => @alerta.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @alerta.to_param
    assert_response :success
  end

  test "should update alerta" do
    put :update, :id => @alerta.to_param, :alerta => @alerta.attributes
    assert_redirected_to alerta_path(assigns(:alerta))
  end

  test "should destroy alerta" do
    assert_difference('Alerta.count', -1) do
      delete :destroy, :id => @alerta.to_param
    end

    assert_redirected_to alertas_path
  end
end
