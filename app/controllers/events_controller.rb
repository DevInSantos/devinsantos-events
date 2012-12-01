class EventsController < ApplicationController
  def index
    @event = Event.current
    @speakers = @event.speakers

    respond_to do |format|
      format.json { render :json => Event.all }
      format.html { render :index }
    end
  end
end
