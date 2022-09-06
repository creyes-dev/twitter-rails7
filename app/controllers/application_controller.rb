class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, unless: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :first_name, :last_name, :department_id, :password, :password_confirmation])
  end

  def logged_in_user
    if current_user.nil?
      flash[:danger] = "Please log in."
      redirect_to new_user_session_path
    end
  end

end
