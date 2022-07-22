class CompetingTeam < ApplicationRecord
  belongs_to :group
  belongs_to :team
  has_one :competing_team_score
end
