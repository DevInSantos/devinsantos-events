class EventsController < ApplicationController
  def index
    @event = Event.current

    respond_to do |format|
      format.json { render :json => Event.all }
      format.html { render :index }
    end
  end
end
