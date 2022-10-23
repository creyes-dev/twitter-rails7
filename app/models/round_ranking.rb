class RoundRanking < ApplicationRecord
  belongs_to :competing_user
  belongs_to :round

  validates_uniqueness_of :competing_user_id, scope: :round_id
end
