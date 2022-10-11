class CompetingUserAward < ApplicationRecord
  belongs_to :competing_user
  belongs_to :competition, optional: true
  belongs_to :round, optional: true
  belongs_to :prediction, optional: true
  belongs_to :award
end
