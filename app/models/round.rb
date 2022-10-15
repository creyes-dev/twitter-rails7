class Round < ApplicationRecord
  belongs_to :competition
  has_many :round_rankings
end
