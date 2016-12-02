class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.references :round, null: false
      t.references :movie, null: false

      t.timestamps(null: false)
    end
  end
end
