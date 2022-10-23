class CompetingUser < ApplicationRecord
  belongs_to :user
  belongs_to :competition
  belongs_to :competing_team, optional: true
  has_many :round_rankings

  def success_perc
    return 0 if predictions.zero?
    (success * 100) / predictions
  end

end
