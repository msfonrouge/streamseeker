class AddSeriesToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :series, :boolean, default: false
  end
end
