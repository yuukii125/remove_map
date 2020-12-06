class Salon < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true

  belongs_to :user
  has_many :reviews, dependent: :destroy  

  mount_uploader :photo, PhotoUploader 

  # csvインポート
  def self.import(path)
    list =[]
    CSV.foreach(path, headers: true) do |row|
      list << {
        user_id: row["user_id"],
        name: row["name"],
        address: row["address"],
        phone_number: row["phone_number"]
      }
    end
    puts "import開始"
    Salon.create!(list)
    puts "import成功"
  rescue ActiveModel::UnknownAttributeError => invalid
    puts "importに失敗しました#{inbalid}"
  end

end
