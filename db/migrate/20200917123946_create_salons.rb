class CreateSalons < ActiveRecord::Migration[6.0]
  def change
    create_table :salons do |t|
      t.string :name
      t.string :url
      t.string :address
      t.string :access
      t.integer :phone_number
      t.string :photo
      t.integer :fear
      t.string :treatment_areas
      t.integer :bussiness_hours

      t.timestamps
    end
  end
end
