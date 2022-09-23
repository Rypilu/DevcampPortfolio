class ApplicationController < ActionController::Base
  # Abstract controller managing all of the controller functionality for the app.
  include DeviseAllowList
  before_action :set_source

  def set_source
    session[:source] = params[:q] if params[:q]
  end

end
