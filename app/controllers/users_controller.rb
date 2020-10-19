class UsersController < ApplicationController
  before_action

  def new
  end

  def show
    @user = User.find(current_user.id)
    if @user.avaterImg?
      @userAvater = @user.avaterImg.to_s
    else
      @userAvater = null
    end
  end

  def edit
    @user = User.find(current_user.id)
    if @user.avaterImg?
      @userAvater = @user.avaterImg.to_s
    else
      @userAvater = null
    end
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

end
