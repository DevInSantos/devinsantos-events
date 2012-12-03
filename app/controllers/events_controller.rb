class EventsController < ApplicationController
  def index
    @event = Event.current
    @track = Track.new(IntervalDecorator.decorate(@event.intervals).to_ary, TalkDecorator.decorate(@event.talks).to_ary)

    respond_to do |format|
      format.json { render :json => Event.all }
      format.html { render :index }
    end
  end
end
