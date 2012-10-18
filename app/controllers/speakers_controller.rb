class SpeakersController < ApplicationController
  def index
    Event.find params[:event_id]
  end
end
