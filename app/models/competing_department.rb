class CompetingDepartment < ApplicationRecord
  belongs_to :competition
  belongs_to :department
end
