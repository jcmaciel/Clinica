require 'test_helper'

class MedicamentosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medicamento" do
    assert_difference('Medicamento.count') do
      post :create, :medicamento => { }
    end

    assert_redirected_to medicamento_path(assigns(:medicamento))
  end

  test "should show medicamento" do
    get :show, :id => medicamentos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => medicamentos(:one).to_param
    assert_response :success
  end

  test "should update medicamento" do
    put :update, :id => medicamentos(:one).to_param, :medicamento => { }
    assert_redirected_to medicamento_path(assigns(:medicamento))
  end

  test "should destroy medicamento" do
    assert_difference('Medicamento.count', -1) do
      delete :destroy, :id => medicamentos(:one).to_param
    end

    assert_redirected_to medicamentos_path
  end
end
