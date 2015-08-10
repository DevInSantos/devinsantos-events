class CachesController < ApplicationController
  before_action :authenticate_user!

  def clear
    Rails.cache.clear

    render nothing: true
  end
end
