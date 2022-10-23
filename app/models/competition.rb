class Competition < ApplicationRecord
  belongs_to :competition_structure
  has_many :groups
  has_many :competing_users
  has_many :competing_departments
  has_one :ranking
end
