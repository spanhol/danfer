require 'test_helper'

class QuartoControllerTest < ActionController::TestCase
  setup do
    @quarto = quarto(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quarto)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quarto" do
    assert_difference('Quarto.count') do
      post :create, quarto: { andar: @quarto.andar, categoria_quarto_id: @quarto.categoria_quarto_id, numero_quarto: @quarto.numero_quarto }
    end

    assert_redirected_to quarto_path(assigns(:quarto))
  end

  test "should show quarto" do
    get :show, id: @quarto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quarto
    assert_response :success
  end

  test "should update quarto" do
    patch :update, id: @quarto, quarto: { andar: @quarto.andar, categoria_quarto_id: @quarto.categoria_quarto_id, numero_quarto: @quarto.numero_quarto }
    assert_redirected_to quarto_path(assigns(:quarto))
  end

  test "should destroy quarto" do
    assert_difference('Quarto.count', -1) do
      delete :destroy, id: @quarto
    end

    assert_redirected_to quarto_index_path
  end
end
