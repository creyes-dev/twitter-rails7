class RoundRanking < ApplicationRecord
  belongs_to :user
  belongs_to :round

  validates_uniqueness_of :user_id, scope: :round_id
end
