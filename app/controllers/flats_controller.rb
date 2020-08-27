class FlatsController < ApplicationController
  def index
    @flats = Flat.all
    if search_params.present?
      @location = search_params["location"]
      @start_date = search_params["start_date"]
      @end_date = search_params["end_date"]
      if search_params["capacity"].present?
        @capacity = search_params["capacity"].to_i
        @flats = Flat.where("location ILIKE ? AND capacity = ?", @location, @capacity)
      else
        @flats = Flat.where("location ILIKE ?", @location)
      end
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @review = Review.new
  end

  private

  def search_params
    params.require(:search).permit(:location, :capacity, :start_date, :end_date)
  end
end
