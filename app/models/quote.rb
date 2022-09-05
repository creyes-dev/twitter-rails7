class Quote < ApplicationRecord
  validates :name_one, presence: true
  validates :name_two, presence: true
end
