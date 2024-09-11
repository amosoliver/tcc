require "test_helper"

class ProfissaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profissao = profissaos(:one)
  end

  test "should get index" do
    get profissaos_url
    assert_response :success
  end

  test "should get new" do
    get new_profissao_url
    assert_response :success
  end

  test "should create profissao" do
    assert_difference("Profissao.count") do
      post profissaos_url, params: { profissao: { nome: @profissao.nome } }
    end

    assert_redirected_to profissao_url(Profissao.last)
  end

  test "should show profissao" do
    get profissao_url(@profissao)
    assert_response :success
  end

  test "should get edit" do
    get edit_profissao_url(@profissao)
    assert_response :success
  end

  test "should update profissao" do
    patch profissao_url(@profissao), params: { profissao: { nome: @profissao.nome } }
    assert_redirected_to profissao_url(@profissao)
  end

  test "should destroy profissao" do
    assert_difference("Profissao.count", -1) do
      delete profissao_url(@profissao)
    end

    assert_redirected_to profissaos_url
  end
end
