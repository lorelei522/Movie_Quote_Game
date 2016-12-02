class Movie < ActiveRecord::Base
  has_many :quotes
  has_many :guesses

  validates_presence_of :title, :year, :imdbID

end
