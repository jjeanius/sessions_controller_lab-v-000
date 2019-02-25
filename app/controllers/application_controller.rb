class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :sets_session_name

  def sets_session_name
    if session[:name] = params[:name]
      @name = session[:name]
    end
  end

end
