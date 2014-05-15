class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # wont allow more than 1 listener at a time
  def current_listener
    @current_listener = Listener.first
  end
end
