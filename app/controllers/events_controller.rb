class EventsController < ApplicationController
  def index

    respond_to do |format|
      format.json { render :json => Event.limit(5) }
      format.html do
        @event = Event.current
        @track = Track.new(IntervalDecorator.decorate(@event.intervals).to_ary, TalkDecorator.decorate(@event.talks).to_ary)

        render :index
      end
    end
  end
end
