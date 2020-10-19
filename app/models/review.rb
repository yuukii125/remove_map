class Review < ApplicationRecord
  validates :user_id, presence: true
  validates :salon_id, presence: true
  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true

  belongs_to :user
  belongs_to :salon
end
