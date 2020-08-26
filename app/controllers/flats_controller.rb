class FlatsController < ApplicationController

  def index
    @flats = Flat.all
    @search = params["search"]
    if @search.present?
      @title = @search["title"]
      @location = @search["location"]
      @flats = Flat.where(title: @title, location: @location)
    end
  end

   def show
    @flat = Flat.find(params[:id])
  end
end
