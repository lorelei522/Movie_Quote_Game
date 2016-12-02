class GameRound < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck

  has_many :game_guesses
end
