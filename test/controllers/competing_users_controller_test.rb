require "test_helper"

class CompetingUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @competing_user = competing_users(:one)
  end

  test "should get index" do
    get competing_users_url
    assert_response :success
  end

  test "should get new" do
    get new_competing_user_url
    assert_response :success
  end

  test "should create competing_user" do
    assert_difference("CompetingUser.count") do
      post competing_users_url, params: { competing_user: { competing_team_id: @competing_user.competing_team_id, competition_id: @competing_user.competition_id, score: @competing_user.score, user_id: @competing_user.user_id } }
    end

    assert_redirected_to competing_user_url(CompetingUser.last)
  end

  test "should show competing_user" do
    get competing_user_url(@competing_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_competing_user_url(@competing_user)
    assert_response :success
  end

  test "should update competing_user" do
    patch competing_user_url(@competing_user), params: { competing_user: { competing_team_id: @competing_user.competing_team_id, competition_id: @competing_user.competition_id, score: @competing_user.score, user_id: @competing_user.user_id } }
    assert_redirected_to competing_user_url(@competing_user)
  end

  test "should destroy competing_user" do
    assert_difference("CompetingUser.count", -1) do
      delete competing_user_url(@competing_user)
    end

    assert_redirected_to competing_users_url
  end
end
