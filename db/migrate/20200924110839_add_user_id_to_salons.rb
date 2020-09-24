class AddUserIdToSalons < ActiveRecord::Migration[6.0]
  def change
    add_column :salons, :user_id, :integer
  end
end
