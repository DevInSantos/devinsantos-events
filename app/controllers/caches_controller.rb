class CachesController < ApplicationController
  before_action :authenticate_user!

  def clear
    Rails.cache.clear

    redirect_to :root
  end
end
