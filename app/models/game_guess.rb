class GameGuess < ActiveRecord::Base
  belongs_to :game_round
  belongs_to :movie

  has_one :user, through: :round
end
