class ItemsController < ApplicationController

  def index
  end

  def show
    @user = User.find(current_user.id)
    @item = Item.find(1)
    @review = Review.find(1)
  end

  def new
  end

end
