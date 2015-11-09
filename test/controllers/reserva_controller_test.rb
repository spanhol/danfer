require 'test_helper'

class ReservaControllerTest < ActionController::TestCase
  setup do
    @reserva = reserva(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reserva)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserva" do
    assert_difference('Reserva.count') do
      post :create, reserva: { cpf: @reserva.cpf, data_final: @reserva.data_final, data_inicial: @reserva.data_inicial, numero_quarto: @reserva.numero_quarto }
    end

    assert_redirected_to reserva_path(assigns(:reserva))
  end

  test "should show reserva" do
    get :show, id: @reserva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reserva
    assert_response :success
  end

  test "should update reserva" do
    patch :update, id: @reserva, reserva: { cpf: @reserva.cpf, data_final: @reserva.data_final, data_inicial: @reserva.data_inicial, numero_quarto: @reserva.numero_quarto }
    assert_redirected_to reserva_path(assigns(:reserva))
  end

  test "should destroy reserva" do
    assert_difference('Reserva.count', -1) do
      delete :destroy, id: @reserva
    end

    assert_redirected_to reserva_index_path
  end
end
