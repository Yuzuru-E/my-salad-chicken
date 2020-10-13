class ReviewsController < ApplicationController

  def index
  end

  def create
    review = Review.create(review_params)
    redirect_to "/items/#{review.item.id}"
  end

  def edit
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:reviewTitle, :evaluation, :comment, :commentImg).merge(user_id: current_user.id, item_id: params[:item_id])
  end

end
