class Prediction < ApplicationRecord
  belongs_to :competing_user
  belongs_to :match
  belongs_to :prediction_result
end
