class Room < ActiveRecord::Base
  has_many :talks
  belongs_to :event

  validates_presence_of :name
end
