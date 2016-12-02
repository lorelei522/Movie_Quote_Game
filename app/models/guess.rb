class Guess < ActiveRecord::Base
  belongs_to :round
  belongs_to :movie

  has_one :user, through: :round
end
