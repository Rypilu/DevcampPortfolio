class ApplicationController < ActionController::Base
  # Abstract controller managing all of the controller functionality for the app.
  include DeviseAllowList
  include SetSource
  include CurrentUserConcern
  include DefaultPageContentConcern



end
