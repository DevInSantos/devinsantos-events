class EventsController < ApplicationController
  def index

    respond_to do |format|
      format.json { render :json => Event.limit(5) }
      format.html do
        @event = Event.current
        @track = Track.new(IntervalDecorator.decorate_collection(@event.intervals), TalkDecorator.decorate_collection(@event.talks))

        render :index
      end
    end
  end
end
