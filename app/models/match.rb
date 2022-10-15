class Match < ApplicationRecord
  belongs_to :competing_team_home, class_name: "CompetingTeam"
  belongs_to :competing_team_away, class_name: "CompetingTeam"
  belongs_to :stadium
  belongs_to :round
  has_many :predictions
  has_many :match_stadistics

  validates :predictions, uniqueness: { scope: [:competing_user_id, :match_id] }
end
