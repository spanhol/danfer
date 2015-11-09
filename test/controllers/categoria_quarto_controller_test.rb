require 'test_helper'

class CategoriaQuartoControllerTest < ActionController::TestCase
  setup do
    @categoria_quarto = categoria_quarto(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoria_quarto)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoria_quarto" do
    assert_difference('CategoriaQuarto.count') do
      post :create, categoria_quarto: { descricao: @categoria_quarto.descricao, valor: @categoria_quarto.valor }
    end

    assert_redirected_to categoria_quarto_path(assigns(:categoria_quarto))
  end

  test "should show categoria_quarto" do
    get :show, id: @categoria_quarto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categoria_quarto
    assert_response :success
  end

  test "should update categoria_quarto" do
    patch :update, id: @categoria_quarto, categoria_quarto: { descricao: @categoria_quarto.descricao, valor: @categoria_quarto.valor }
    assert_redirected_to categoria_quarto_path(assigns(:categoria_quarto))
  end

  test "should destroy categoria_quarto" do
    assert_difference('CategoriaQuarto.count', -1) do
      delete :destroy, id: @categoria_quarto
    end

    assert_redirected_to categoria_quarto_index_path
  end
end
