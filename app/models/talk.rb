class Talk < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :room

  validates_presence_of :name, :horary

  def for_this_room?(room)
    self.room == room
  end
end
