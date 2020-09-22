class Review < ApplicationRecord
  validates :user_id, presence: true
  validates :salon_id, presence: true
end
