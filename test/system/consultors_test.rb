require "application_system_test_case"

class ConsultorsTest < ApplicationSystemTestCase
  setup do
    @consultor = consultors(:one)
  end

  test "visiting the index" do
    visit consultors_url
    assert_selector "h1", text: "Consultors"
  end

  test "should create consultor" do
    visit consultors_url
    click_on "New consultor"

    fill_in "Id pessoa", with: @consultor.id_pessoa
    fill_in "Id profissao", with: @consultor.id_profissao
    click_on "Create Consultor"

    assert_text "Consultor was successfully created"
    click_on "Back"
  end

  test "should update Consultor" do
    visit consultor_url(@consultor)
    click_on "Edit this consultor", match: :first

    fill_in "Id pessoa", with: @consultor.id_pessoa
    fill_in "Id profissao", with: @consultor.id_profissao
    click_on "Update Consultor"

    assert_text "Consultor was successfully updated"
    click_on "Back"
  end

  test "should destroy Consultor" do
    visit consultor_url(@consultor)
    click_on "Destroy this consultor", match: :first

    assert_text "Consultor was successfully destroyed"
  end
end
