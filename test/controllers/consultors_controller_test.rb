require "test_helper"

class ConsultorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consultor = consultors(:one)
  end

  test "should get index" do
    get consultors_url
    assert_response :success
  end

  test "should get new" do
    get new_consultor_url
    assert_response :success
  end

  test "should create consultor" do
    assert_difference("Consultor.count") do
      post consultors_url, params: { consultor: { id_pessoa: @consultor.id_pessoa, id_profissao: @consultor.id_profissao } }
    end

    assert_redirected_to consultor_url(Consultor.last)
  end

  test "should show consultor" do
    get consultor_url(@consultor)
    assert_response :success
  end

  test "should get edit" do
    get edit_consultor_url(@consultor)
    assert_response :success
  end

  test "should update consultor" do
    patch consultor_url(@consultor), params: { consultor: { id_pessoa: @consultor.id_pessoa, id_profissao: @consultor.id_profissao } }
    assert_redirected_to consultor_url(@consultor)
  end

  test "should destroy consultor" do
    assert_difference("Consultor.count", -1) do
      delete consultor_url(@consultor)
    end

    assert_redirected_to consultors_url
  end
end
