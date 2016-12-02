class Quote < ActiveRecord::Base
  belongs_to :movie
  belongs_to :deck

  validates_presence_of :text
end
