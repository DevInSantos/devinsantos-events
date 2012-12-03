class Track
  include Enumerable

  def initialize(intervals = [], talks = [])
    @list = []
    intervals.each {|i| @list << i}
    talks.each {|t| @list << t}

    @list.sort_by!(&:horary)
  end

  def each(room)
    filtered ||= @list.select { |track| track.for_this_room? room}
    filtered.each { |item| yield item }
  end
end