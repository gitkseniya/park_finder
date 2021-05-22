class ParksController < ApplicationController
  def index
    @parks = ParksServices.get_details(params[:state])
  end

  def show
  end
end
