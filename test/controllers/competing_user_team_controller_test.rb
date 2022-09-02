require "test_helper"

class CompetingUserTeamControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get competing_user_team_index_url
    assert_response :success
  end

  test "should get edit" do
    get competing_user_team_edit_url
    assert_response :success
  end

  test "should get update" do
    get competing_user_team_update_url
    assert_response :success
  end

  test "should get destroy" do
    get competing_user_team_destroy_url
    assert_response :success
  end
end
