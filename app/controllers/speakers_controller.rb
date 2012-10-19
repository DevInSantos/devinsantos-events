class SpeakersController < ApplicationController
  def index
    @speakers = Speaker.for_event params[:event_id]

    respond_to do |format|
      format.json { render :json =>  @speakers.to_json(:include => {:talks => {:include => :room}}) }
    end
  end
end
