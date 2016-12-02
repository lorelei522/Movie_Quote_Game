class Movie < ActiveRecord::Base
  has_many :quotes

  validates_presence_of :title, :year

end
