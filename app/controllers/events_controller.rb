class EventsController < ApplicationController
  def index
    @events = Event.all

    respond_to do |format|
      format.json { render :json => @events }
      format.html { render :index }
    end
  end
end
