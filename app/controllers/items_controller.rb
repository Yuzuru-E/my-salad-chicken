class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :show]
  
  def index
    @item = Item.find(1)
  end

  def show
    if user_signed_in? 
      @user = User.find(current_user.id)
    end
    @review = Review.new
    @reviews = @item.reviews.includes(:user)
  end

  def new
  end

  def edit
  end

  private

  def review_params
    params.require(:review).permit(:reviewTitle, :evaluation, :comment, :commentImg).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
