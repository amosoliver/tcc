require "application_system_test_case"

class ProfissaosTest < ApplicationSystemTestCase
  setup do
    @profissao = profissaos(:one)
  end

  test "visiting the index" do
    visit profissaos_url
    assert_selector "h1", text: "Profissaos"
  end

  test "should create profissao" do
    visit profissaos_url
    click_on "New profissao"

    fill_in "Nome", with: @profissao.nome
    click_on "Create Profissao"

    assert_text "Profissao was successfully created"
    click_on "Back"
  end

  test "should update Profissao" do
    visit profissao_url(@profissao)
    click_on "Edit this profissao", match: :first

    fill_in "Nome", with: @profissao.nome
    click_on "Update Profissao"

    assert_text "Profissao was successfully updated"
    click_on "Back"
  end

  test "should destroy Profissao" do
    visit profissao_url(@profissao)
    click_on "Destroy this profissao", match: :first

    assert_text "Profissao was successfully destroyed"
  end
end
