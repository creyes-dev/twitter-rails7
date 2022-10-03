require "application_system_test_case"

class CompetingUsersTest < ApplicationSystemTestCase
  setup do
    @competing_user = competing_users(:one)
  end

  test "visiting the index" do
    visit competing_users_url
    assert_selector "h1", text: "Competing users"
  end

  test "should create competing user" do
    visit competing_users_url
    click_on "New competing user"

    fill_in "Competing team", with: @competing_user.competing_team_id
    fill_in "Competition", with: @competing_user.competition_id
    fill_in "Score", with: @competing_user.score
    fill_in "User", with: @competing_user.user_id
    click_on "Create Competing user"

    assert_text "Competing user was successfully created"
    click_on "Back"
  end

  test "should update Competing user" do
    visit competing_user_url(@competing_user)
    click_on "Edit this competing user", match: :first

    fill_in "Competing team", with: @competing_user.competing_team_id
    fill_in "Competition", with: @competing_user.competition_id
    fill_in "Score", with: @competing_user.score
    fill_in "User", with: @competing_user.user_id
    click_on "Update Competing user"

    assert_text "Competing user was successfully updated"
    click_on "Back"
  end

  test "should destroy Competing user" do
    visit competing_user_url(@competing_user)
    click_on "Destroy this competing user", match: :first

    assert_text "Competing user was successfully destroyed"
  end
end
