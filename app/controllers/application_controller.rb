class ApplicationController < ActionController::Base
  layout 'authentication', if: :devise_controller?
end
