class FlatsController < ApplicationController
  def index
    @flats = Flat.all
    # @search = params["search"]
    # if @search.present? || params[:activity_filter].present?
    #   # sql_query = "title ILIKE :query OR syllabus ILIKE :query"
    #   @location = @search["location"]
    #   @flats = Flat.where("location ILIKE ?", "%#{@location}%")
    # end


  end

  def show
    @flat = Flat.find(params[:id])
    @review = Review.new
  end
end
