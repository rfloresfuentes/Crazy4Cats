class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
    
  
  protected
  
  def after_sign_in_path_for(resourse)
    posts_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :age])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone, :age])
  end
end
