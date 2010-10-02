require 'test_helper'

class MedicosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medico" do
    assert_difference('Medico.count') do
      post :create, :medico => { }
    end

    assert_redirected_to medico_path(assigns(:medico))
  end

  test "should show medico" do
    get :show, :id => medicos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => medicos(:one).to_param
    assert_response :success
  end

  test "should update medico" do
    put :update, :id => medicos(:one).to_param, :medico => { }
    assert_redirected_to medico_path(assigns(:medico))
  end

  test "should destroy medico" do
    assert_difference('Medico.count', -1) do
      delete :destroy, :id => medicos(:one).to_param
    end

    assert_redirected_to medicos_path
  end
end
