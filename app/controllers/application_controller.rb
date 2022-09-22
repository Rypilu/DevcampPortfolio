class ApplicationController < ActionController::Base

  # FYI :configure_permitted_parameters is just a random method name, could be anything.
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

end
