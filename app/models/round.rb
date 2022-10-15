class Round < ApplicationRecord
  belongs_to :competition
  has_many :round_rankings

  validates :round_rankings, uniqueness: { scope: [:round_id, :user_id ]}
end
