# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

CompetitionStructure.create!(description: "league")
CompetitionStructure.create!(description: "tournament")
CompetitionStructure.create!(description: "league and tournament playoff")

Competition.create!(name: "Mundial qatar 2022", competition_structure_id: 3, national_teams: true, groups: 8, teams_group: 4, rounds: 1,  begin: "2022-11-21T09:00:00+00:00", active: true)


