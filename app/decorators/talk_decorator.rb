class TalkDecorator < Draper::Base
  decorates :talk
  allows :horary, :for_this_room?

  def print
    h.render model
  end

end