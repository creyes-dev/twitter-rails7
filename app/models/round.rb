class Round < ApplicationRecord
  belongs_to :competition
  has_many :matches
end
