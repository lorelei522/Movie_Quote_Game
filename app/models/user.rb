class User < ActiveRecord::Base
  has_secure_password

# need to put my associations for the game 

  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email
end
