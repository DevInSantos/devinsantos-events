class IntervalDecorator < Draper::Base
  decorates :interval
  allows :horary, :for_this_room?

  def print
    h.render model
  end

end