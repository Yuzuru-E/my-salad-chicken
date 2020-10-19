class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  def index
  end

  def create
    review = Review.create(review_params)
    redirect_to "/items/#{review.item.id}"
  end

  def show
  end

  def edit
    @item = Item.find(params[:item_id])
  end

  def destroy
    @review.destroy
    redirect_to "/items/#{@review.item_id}"
  end

  def update
    @review.update(review_params)
    redirect_to "/items/#{@review.item_id}"
  end

  private

  def review_params
    params.require(:review).permit(:reviewTitle, :evaluation, :comment, :commentImg).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

end
