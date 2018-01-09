require 'test_helper'

class TreinamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @treinamento = treinamentos(:one)
  end

  test "should get index" do
    get treinamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_treinamento_url
    assert_response :success
  end

  test "should create treinamento" do
    assert_difference('Treinamento.count') do
      post treinamentos_url, params: { treinamento: { dia: @treinamento.dia, horario: @treinamento.horario } }
    end

    assert_redirected_to treinamento_url(Treinamento.last)
  end

  test "should show treinamento" do
    get treinamento_url(@treinamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_treinamento_url(@treinamento)
    assert_response :success
  end

  test "should update treinamento" do
    patch treinamento_url(@treinamento), params: { treinamento: { dia: @treinamento.dia, horario: @treinamento.horario } }
    assert_redirected_to treinamento_url(@treinamento)
  end

  test "should destroy treinamento" do
    assert_difference('Treinamento.count', -1) do
      delete treinamento_url(@treinamento)
    end

    assert_redirected_to treinamentos_url
  end
end
