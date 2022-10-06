class Competition < ApplicationRecord
  belongs_to :competition_structure
  has_many :groups
  has_many :competing_teams, through: :groups
end
