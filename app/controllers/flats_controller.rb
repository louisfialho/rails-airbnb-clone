class FlatsController < ApplicationController
  def index
    @flats = Flat.all
    @search = params["search"]
    if @search.present?
      # sql_query = "title ILIKE :query OR syllabus ILIKE :query"
      @location = @search["location"]
      @flats = Flat.where("location ILIKE ?", "%#{@location}%")
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
  end
end
