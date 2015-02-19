class EventsController < ApplicationController
  def index
    respond_to do |format|
      format.json { render :json => Event.limit(5) }
      format.html do
        @event = Event.current
        @track = Track.new(IntervalDecorator.decorate_collection(@event.intervals), TalkDecorator.decorate_collection(@event.talks))

        expires_in 5.minutes
        fresh_when([@event.intervals, @event.talks], public: true)
      end
    end
  end
end
