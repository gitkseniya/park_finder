class ParksController < ApplicationController
  def index
    @parks = ParkFacade.specific_park(params[:state])
  end

  def show
  end
end
