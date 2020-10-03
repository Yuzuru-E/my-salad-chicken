class Users::RegistrationsController < Devise::RegistrationsController
  before_action :check_guest, only: :destroy

  

  
  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
  
  def after_update_path_for(resource)
    user_path(@user.id)
  end

end