class ApplicationController < ActionController::Base
  # layout 'authentication', if: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :role, :name, :first_name, :last_name, :department_id, :password, :password_confirmation])
  end

end
