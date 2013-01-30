class IntervalDecorator < Draper::Decorator
  include Draper::LazyHelpers

  decorates :interval
  delegate :horary, :for_this_room?

  def print
    h.render model
  end

end