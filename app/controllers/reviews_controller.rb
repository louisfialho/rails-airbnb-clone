class ReviewsController < ApplicationController
  def create
    @flat = Flat.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.flat = @flat
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render "flats/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :text)
  end
end
