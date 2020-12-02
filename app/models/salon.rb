class Salon < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true

  belongs_to :user
  has_many :reviews, dependent: :destroy  

  mount_uploader :photo, PhotoUploader 

end
