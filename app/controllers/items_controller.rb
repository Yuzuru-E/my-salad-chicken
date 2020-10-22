class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :show, :update]
  
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
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    if @item.save
      redirect_to new_item_path, notice: 'アイテムの新規登録に成功しました。'
    else
      render new_item_path, notice: 'アイテム登録に失敗しました。'
    end
  end

  def edit
    @itemImg = @item.image_url.to_s
  end

  def update
    @item.update(item_params)
    redirect_to item_path(@item.id), notice: '商品情報が更新されました。'
  end

  private

  def item_params
    params.require(:item).permit(:name, :maker_id, :maker_url, :price, :image_url)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
