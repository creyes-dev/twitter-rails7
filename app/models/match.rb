class Match < ApplicationRecord
  belongs_to :competing_team_1, class_name: "CompetingTeam"
  belongs_to :competing_team_2, class_name: "CompetingTeam"
  belongs_to :location
end
