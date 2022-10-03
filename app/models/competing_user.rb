class CompetingUser < ApplicationRecord
  belongs_to :user
  belongs_to :competition
  belongs_to :competing_team
end
