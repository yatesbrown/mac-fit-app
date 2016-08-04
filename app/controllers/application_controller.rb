class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  # make this method accessible in any controller
  def current_user
    # memoization (caching) technique
    # multiple calls to this method will result in only one database query
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # make this method acccessible in any view
  helper_method :current_user
end
