class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.integer :year
      t.integer :length
      t.string :genre
      t.string :platform

      t.timestamps
    end
  end
end
