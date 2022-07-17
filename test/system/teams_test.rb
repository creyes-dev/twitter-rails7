require "application_system_test_case"

class TeamsTest < ApplicationSystemTestCase
  setup do
    @team = teams(:one)
  end

  test "visiting the index" do
    visit teams_url
    assert_selector "h1", text: "Teams"
  end

  test "should create team" do
    visit teams_url
    click_on "New team"

    fill_in "Iso alpha2", with: @team.iso_alpha2
    fill_in "Iso alpha3", with: @team.iso_alpha3
    fill_in "Iso code", with: @team.iso_code
    fill_in "Name", with: @team.name
    check "National team" if @team.national_team
    click_on "Create Team"

    assert_text "Team was successfully created"
    click_on "Back"
  end

  test "should update Team" do
    visit team_url(@team)
    click_on "Edit this team", match: :first

    fill_in "Iso alpha2", with: @team.iso_alpha2
    fill_in "Iso alpha3", with: @team.iso_alpha3
    fill_in "Iso code", with: @team.iso_code
    fill_in "Name", with: @team.name
    check "National team" if @team.national_team
    click_on "Update Team"

    assert_text "Team was successfully updated"
    click_on "Back"
  end

  test "should destroy Team" do
    visit team_url(@team)
    click_on "Destroy this team", match: :first

    assert_text "Team was successfully destroyed"
  end
end
