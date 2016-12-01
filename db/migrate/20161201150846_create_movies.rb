class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :year, null: false
      t.string :imdbID, null: false

      t.timestamps(null: false)
    end
  end
end
