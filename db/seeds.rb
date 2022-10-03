CompetitionStructure.create([
  { description: "league" },
  { description: "tournament" },
  { description: "group and knockout stage"}])

Competition.create(
  name: "Mundial qatar 2022",
  competition_structure_id: 3,
  national_teams: true,
  groups: 8,
  teams_group: 4,
  rounds: 7,
  begin: "2022-11-21T09:00:00+00:00",
  active: true)
