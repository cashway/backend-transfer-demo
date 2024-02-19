class ApplicationController < ActionController::API
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :validate_user_access, unless: :devise_controller?

  protected

  def validate_user_access
    @user = current_user if current_user.present?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end
end
