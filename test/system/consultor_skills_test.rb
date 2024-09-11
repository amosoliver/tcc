require "application_system_test_case"

class ConsultorSkillsTest < ApplicationSystemTestCase
  setup do
    @consultor_skill = consultor_skills(:one)
  end

  test "visiting the index" do
    visit consultor_skills_url
    assert_selector "h1", text: "Consultor skills"
  end

  test "should create consultor skill" do
    visit consultor_skills_url
    click_on "New consultor skill"

    fill_in "Id consultor", with: @consultor_skill.id_consultor
    fill_in "Id skill", with: @consultor_skill.id_skill
    click_on "Create Consultor skill"

    assert_text "Consultor skill was successfully created"
    click_on "Back"
  end

  test "should update Consultor skill" do
    visit consultor_skill_url(@consultor_skill)
    click_on "Edit this consultor skill", match: :first

    fill_in "Id consultor", with: @consultor_skill.id_consultor
    fill_in "Id skill", with: @consultor_skill.id_skill
    click_on "Update Consultor skill"

    assert_text "Consultor skill was successfully updated"
    click_on "Back"
  end

  test "should destroy Consultor skill" do
    visit consultor_skill_url(@consultor_skill)
    click_on "Destroy this consultor skill", match: :first

    assert_text "Consultor skill was successfully destroyed"
  end
end
