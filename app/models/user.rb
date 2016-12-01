class User < ActiveRecord::Base
  has_secure_password

  has_many :posts
  has_many :comments

  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email
end
