class Room < ActiveRecord::Base
  attr_accessible :name

  has_many :talks

  validates_presence_of :name
end
