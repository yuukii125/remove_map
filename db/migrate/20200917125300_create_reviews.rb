class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :saon_id
      t.string :comment
      t.integer :rate

      t.timestamps
    end
  end
end
