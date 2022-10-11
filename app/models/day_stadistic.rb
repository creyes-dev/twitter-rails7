class DayStadistic < ApplicationRecord
  belongs_to :department, optional: true
  belongs_to :competing_user, optional: true
end
