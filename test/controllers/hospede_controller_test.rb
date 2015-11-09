require 'test_helper'

class HospedeControllerTest < ActionController::TestCase
  setup do
    @hospede = hospede(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospede)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospede" do
    assert_difference('Hospede.count') do
      post :create, hospede: { cpf: @hospede.cpf, nascimento: @hospede.nascimento, nome: @hospede.nome, placa: @hospede.placa, rg: @hospede.rg }
    end

    assert_redirected_to hospede_path(assigns(:hospede))
  end

  test "should show hospede" do
    get :show, id: @hospede
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospede
    assert_response :success
  end

  test "should update hospede" do
    patch :update, id: @hospede, hospede: { cpf: @hospede.cpf, nascimento: @hospede.nascimento, nome: @hospede.nome, placa: @hospede.placa, rg: @hospede.rg }
    assert_redirected_to hospede_path(assigns(:hospede))
  end

  test "should destroy hospede" do
    assert_difference('Hospede.count', -1) do
      delete :destroy, id: @hospede
    end

    assert_redirected_to hospede_index_path
  end
end
