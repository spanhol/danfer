require 'test_helper'

class DebitosControllerTest < ActionController::TestCase
  test "should get calcular" do
    get :calcular
    assert_response :success
  end

  test "should get fechar" do
    get :fechar
    assert_response :success
  end

  test "should get renovar" do
    get :renovar
    assert_response :success
  end

end
