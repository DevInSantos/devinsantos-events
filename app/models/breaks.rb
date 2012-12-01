class Breaks < ActiveRecord::Base
  attr_accessible :description, :horary, :event_id

  validates_presence_of :description, :horary

  belongs_to :event
end
