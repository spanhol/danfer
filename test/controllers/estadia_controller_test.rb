require 'test_helper'

class EstadiaControllerTest < ActionController::TestCase
  setup do
    @estadia = estadia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estadia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estadia" do
    assert_difference('Estadia.count') do
      post :create, estadia: { categoria_quarto_id: @estadia.categoria_quarto_id, cpf: @estadia.cpf, data_final: @estadia.data_final, data_inicial: @estadia.data_inicial, numero_quarto: @estadia.numero_quarto, qtde_pessoas: @estadia.qtde_pessoas, valor_diaria: @estadia.valor_diaria }
    end

    assert_redirected_to estadia_path(assigns(:estadia))
  end

  test "should show estadia" do
    get :show, id: @estadia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estadia
    assert_response :success
  end

  test "should update estadia" do
    patch :update, id: @estadia, estadia: { categoria_quarto_id: @estadia.categoria_quarto_id, cpf: @estadia.cpf, data_final: @estadia.data_final, data_inicial: @estadia.data_inicial, numero_quarto: @estadia.numero_quarto, qtde_pessoas: @estadia.qtde_pessoas, valor_diaria: @estadia.valor_diaria }
    assert_redirected_to estadia_path(assigns(:estadia))
  end

  test "should destroy estadia" do
    assert_difference('Estadia.count', -1) do
      delete :destroy, id: @estadia
    end

    assert_redirected_to estadia_index_path
  end
end
