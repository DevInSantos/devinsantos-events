class TalkDecorator < Draper::Decorator
  include Draper::LazyHelpers

  decorates :talk
  delegate :horary, :for_this_room?

  def print
    h.render model
  end

end