class Users::RegistrationsController < Devise::RegistrationsController
  before_action :check_guest, only: :destroy

  def edit
    @user = User.find(current_user.id)
    if @user.avaterImg?
      @userAvater = @user.avaterImg.to_s
    else
      @userAvater = null
    end
  end

  def check_guest
    if resource.email == 'guest@example.com'
      redirect_to root_path, alert: 'ゲストユーザーは削除できません。'
    end
  end

  
  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
  
  def after_update_path_for(resource)
    user_path(@user.id)
  end

end