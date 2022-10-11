class CompetingUserAward < ApplicationRecord
  belongs_to :competing_user
  belongs_to :competition
  belongs_to :round
  belongs_to :prediction
  belongs_to :award
end
