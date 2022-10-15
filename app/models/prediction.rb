class Prediction < ApplicationRecord
  belongs_to :competing_user
  belongs_to :match
  belongs_to :prediction_result
  has_many :competing_user_awards

  validates_uniqueness_of :competing_user_id, :scope => :match_id
end
