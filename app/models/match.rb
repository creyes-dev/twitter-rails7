class Match < ApplicationRecord
  belongs_to :competing_team_home, class_name: "CompetingTeam"
  belongs_to :competing_team_away, class_name: "CompetingTeam"
  belongs_to :stadium
  belongs_to :round
  has_many :predictions
  has_many :match_stadistics

  def prediction_by_competing_user(competing_user)
    predictions.find { |p| p.competing_user_id == competing_user.id }
  end

end
