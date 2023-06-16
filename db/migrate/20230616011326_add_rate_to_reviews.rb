class AddRateToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :rate, :integer
  end
end
