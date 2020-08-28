class ReviewsController < ApplicationController
  def create
    @flat = Flat.find(params[:flat_id])
    @review = Review.new(review_params)
    @review.flat = @flat
    @review.user_id = current_user.id
    if @review.save
      redirect_to flat_path(@flat, anchor: "review-#{@review.id}")
    else
      redirect_to flat_path(@flat)
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :text)
  end
end
