class EventsController < ApplicationController
  def index
    @event = Event.current
    @track = Track.new(IntervalDecorator.decorate(@event.intervals), TalkDecorator.decorate(@event.talks))

    respond_to do |format|
      format.json { render :json => Event.all }
      format.html { render :index }
    end
  end
end
