class ApplicationController < ActionController::Base
  layout :layout_by_resource
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :configure_account_update_params, only: [:update], if: :devise_controller?
  #before_action :update_pass_change, if: :devise_controller?, only: [:edit]
  before_action :check_changed_pass

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :role, :name, :first_name, :last_name, :department_id, :password, :password_confirmation ])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [ :current_password, :password, :password_confirmation, :pass_changed ])
  end

  def layout_by_resource
    if !devise_controller?
      "application"
    else
      "authentication"
    end
  end

  def after_sign_in_path_for(resource)
    if current_user.sign_in_count == 1
      # edit_passwords_path
      token = current_user.send(:set_reset_password_token)
      sign_out(current_user)
      redirect_to(edit_password_path(:user, reset_password_token: token))
    else
      root_path
    end
  end

  #def update_pass_change # records that the user has changed their password
  #  unless current_user.pass_changed != current_user.created_at
  #  current_user.pass_changed = Time.now
  #  end
  #end

  def check_changed_pass
    if !devise_controller? && current_user
      @user = current_user
      if !@user.pass_changed #make sure user has changed their password before accessing internal pages
        redirect_to edit_user_registration_path, alert: "You must change your password before logging in for the first time"
      end
    end
  end

end
