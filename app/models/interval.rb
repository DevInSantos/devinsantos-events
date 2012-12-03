class Interval < ActiveRecord::Base
  attr_accessible :description, :horary, :event_id

  validates_presence_of :description, :horary

  belongs_to :event

  def for_this_room?(room)
    true
  end
end
