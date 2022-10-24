class Competition < ApplicationRecord
  belongs_to :competition_structure
  has_many :groups
  has_many :competing_users
  has_many :competing_departments
  has_one :ranking

  def competing_user_favorite_team_deadline
    self.begin + 1.week.to_i
  end

end
