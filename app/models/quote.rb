class Quote < ActiveRecord::Base
  belongs_to :movie

  validates_presence_of :text
end
