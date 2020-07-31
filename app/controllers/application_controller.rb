class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    case resource
    when User
      users_path
    end
   end

  def after_sihn_out_path_for(resource)
    case resource
    when User
      root_path
    end
   end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :post_code, :address, :email])
  end
end
