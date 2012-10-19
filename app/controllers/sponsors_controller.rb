class SponsorsController < ApplicationController
  def index
    @sponsors = Sponsor.sponsoring params[:event_id]

    respond_to do |format|
      format.json { render :json => @sponsors }
    end
  end
end
