require "test_helper"

class CompetitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @competition = competitions(:one)
  end

  test "should get index" do
    get competitions_url
    assert_response :success
  end

  test "should get new" do
    get new_competition_url
    assert_response :success
  end

  test "should create competition" do
    assert_difference("Competition.count") do
      post competitions_url, params: { competition: { active: @competition.active, begin: @competition.begin, competition_structure_id: @competition.competition_structure_id, groups: @competition.groups, loops: @competition.loops, name: @competition.name, national_teams: @competition.national_teams, rounds: @competition.rounds, teams_group: @competition.teams_group } }
    end

    assert_redirected_to competition_url(Competition.last)
  end

  test "should show competition" do
    get competition_url(@competition)
    assert_response :success
  end

  test "should get edit" do
    get edit_competition_url(@competition)
    assert_response :success
  end

  test "should update competition" do
    patch competition_url(@competition), params: { competition: { active: @competition.active, begin: @competition.begin, competition_structure_id: @competition.competition_structure_id, groups: @competition.groups, loops: @competition.loops, name: @competition.name, national_teams: @competition.national_teams, rounds: @competition.rounds, teams_group: @competition.teams_group } }
    assert_redirected_to competition_url(@competition)
  end

  test "should destroy competition" do
    assert_difference("Competition.count", -1) do
      delete competition_url(@competition)
    end

    assert_redirected_to competitions_url
  end
end
