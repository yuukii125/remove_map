class SalonsDatum < ApplicationRecord
  def change
    create_table :salons_data do |t|
      t.integer :user_id
      t.string :name
      t.string :address
      t.string :phone_number
    end
  end
end
