class Quote < ApplicationRecord
  validates :name_one, presence: true
  validates :name_two, presence: true

  scope :ordered, -> { order(id: :desc) }
end
