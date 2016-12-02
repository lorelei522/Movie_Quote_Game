class CreateGameGuesses < ActiveRecord::Migration
  def change
    create_table :game_guesses do |t|
      t.references :game_round, null: false
      t.references :movie, null: false

      t.timestamps(null: false)
    end
  end
end
