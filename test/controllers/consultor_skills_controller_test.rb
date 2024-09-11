require "test_helper"

class ConsultorSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consultor_skill = consultor_skills(:one)
  end

  test "should get index" do
    get consultor_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_consultor_skill_url
    assert_response :success
  end

  test "should create consultor_skill" do
    assert_difference("ConsultorSkill.count") do
      post consultor_skills_url, params: { consultor_skill: { id_consultor: @consultor_skill.id_consultor, id_skill: @consultor_skill.id_skill } }
    end

    assert_redirected_to consultor_skill_url(ConsultorSkill.last)
  end

  test "should show consultor_skill" do
    get consultor_skill_url(@consultor_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_consultor_skill_url(@consultor_skill)
    assert_response :success
  end

  test "should update consultor_skill" do
    patch consultor_skill_url(@consultor_skill), params: { consultor_skill: { id_consultor: @consultor_skill.id_consultor, id_skill: @consultor_skill.id_skill } }
    assert_redirected_to consultor_skill_url(@consultor_skill)
  end

  test "should destroy consultor_skill" do
    assert_difference("ConsultorSkill.count", -1) do
      delete consultor_skill_url(@consultor_skill)
    end

    assert_redirected_to consultor_skills_url
  end
end
