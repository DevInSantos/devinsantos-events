class Room < ActiveRecord::Base
  attr_accessible :name

  validates_presence_of :name
end
