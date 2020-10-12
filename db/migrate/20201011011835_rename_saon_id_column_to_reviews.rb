class RenameSaonIdColumnToReviews < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :saon_id, :salon_id
  end
end
