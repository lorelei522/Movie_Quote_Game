class CreateGameRounds < ActiveRecord::Migration
  def change
    create_table :game_rounds do |t|
      t.references :user, null: false
      t.references :deck, null: false 

      t.timestamps(null: false)
    end
  end
end
