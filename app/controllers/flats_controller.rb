class FlatsController < ApplicationController
  def index
    @flats = Flat.all
    @check_in = Date.today.strftime("%Y-%m-%d")
    @check_out = (Date.today + 3).strftime("%Y-%m-%d")

    if search_params.present?
      @location = search_params["location"]
      @check_in = search_params["check_in"]
      @check_out = search_params["check_out"]
      if search_params["capacity"].present?
        @capacity = search_params["capacity"].to_i
        @flats = Flat.where("location ILIKE ? AND capacity = ?", @location, @capacity)
      else
        @flats = Flat.where("location ILIKE ?", @location)
      end
    end

     @markers = @flats.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { flat: flat }),
        image_url: helpers.asset_url('marker.png')
      }
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @review = Review.new
    if params[:check_in].present? && params[:check_out].present?
      @check_in = params[:check_in]
      @check_out = params[:check_out]
    else
      @check_in = Date.today.strftime("%Y-%m-%d")
      @check_out = (Date.today + 3).strftime("%Y-%m-%d")
    end
  end

  private

  def search_params
    params.require(:search).permit(:location, :capacity, :check_in, :check_out)
  end
end
