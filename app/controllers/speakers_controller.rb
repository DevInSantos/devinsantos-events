class SpeakersController < ApplicationController
  def index
    event = Event.find params[:event_id]
    @speakers = event.speakers_and_talks

    respond_to do |format|
      format.json { render :json =>  @speakers }
    end
  end
end
