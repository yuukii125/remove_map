class ChangeDatatypeRateofReviews < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :rate, :float
  end
end
