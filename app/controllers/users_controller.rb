class UsersController < ApplicationController
  before_action :set_userImg, only: [:show, :edit]

  def new
  end

  def show
    @userFav = User.find(params[:id])
    @items = @userFav.items

    favorites = Favorite.where(user_id: current_user.id).pluck(:item_id)
    @favorite_list = Post.find(favorites)
  end

  def edit
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(current_user.id), notice: 'ユーザー情報が更新されました。'
  end

  private
  
  def user_params
    params.require(:user).permit(:avaterImg, :name, :nickname, :age_id, :gender_id, :introduction)
  end

  def set_userImg
    @user = User.find(current_user.id)
    if @user.avaterImg?
      @userAvater = @user.avaterImg.to_s
    else
      @userAvater = nil
    end
  end

end
