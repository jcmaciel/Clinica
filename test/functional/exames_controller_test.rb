require 'test_helper'

class ExamesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exame" do
    assert_difference('Exame.count') do
      post :create, :exame => { }
    end

    assert_redirected_to exame_path(assigns(:exame))
  end

  test "should show exame" do
    get :show, :id => exames(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => exames(:one).to_param
    assert_response :success
  end

  test "should update exame" do
    put :update, :id => exames(:one).to_param, :exame => { }
    assert_redirected_to exame_path(assigns(:exame))
  end

  test "should destroy exame" do
    assert_difference('Exame.count', -1) do
      delete :destroy, :id => exames(:one).to_param
    end

    assert_redirected_to exames_path
  end
end
