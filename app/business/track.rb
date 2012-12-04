class Track
  include Enumerable

  def initialize(intervals = [], talks = [])
    @list = intervals + talks

    @list.sort_by!(&:horary)
  end

  def each
    @list.each { |item| yield item }
  end

  def for_room(room)
    select { |track| track.for_this_room? room }.each { |item| yield item }
  end
end