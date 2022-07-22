class Group < ApplicationRecord
  belongs_to :competition
  has_many :competing_teams
end
