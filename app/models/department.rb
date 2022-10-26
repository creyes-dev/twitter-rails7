class Department < ApplicationRecord
  has_many :competing_departments
  has_many :users
end
