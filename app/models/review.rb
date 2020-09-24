class Review < ApplicationRecord
  validates :user_id, presence: true
  validates :salon_id, presence: true

  belongs_to :user
  belongs_to :salon
  validates_uniqueness_of :salon_id, scope: :user_id
end
