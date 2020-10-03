class ChangeDatatypeColumnsofSalons < ActiveRecord::Migration[6.0]
  def change
    change_column :salons, :phone_number, :string
    change_column :salons, :fear, :string
    change_column :salons, :bussiness_hours, :string
  end
end
