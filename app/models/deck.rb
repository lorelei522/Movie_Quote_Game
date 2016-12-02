class Deck < ActiveRecord::Base
  has_many :rounds
  has_many :quotes

  belongs_to :author,  class_name: User
end
