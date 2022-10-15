class Competition < ApplicationRecord
  belongs_to :competition_structure
  has_many :groups
  has_one :ranking
end
