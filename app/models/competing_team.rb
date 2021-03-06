class CompetingTeam < ApplicationRecord
  belongs_to :group
  belongs_to :team, optional: true
  has_one :competing_team_score
  has_many :home_matches, class_name: "Match", foreign_key: "competing_team_1"
  has_many :away_matches, class_name: "Match", foreign_key: "competing_team_2"

  # Get all matches
  def matches
    self.home_matches + self.away_matches
  end
end
