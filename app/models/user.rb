class User < ActiveRecord::Base
  has_secure_password

  has_many :game_rounds
  has_many :decks, foreign_key: :author_id
  has_many :game_guesses, through: :rounds

  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email
end
