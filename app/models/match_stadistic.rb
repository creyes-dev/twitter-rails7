class MatchStadistic < ApplicationRecord
  belongs_to :match
  belongs_to :department, optional: true
end
