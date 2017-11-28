class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :curent_user, :logged_in?

  def logged_in?
    !!current_user
  end

  private

  def require_logged_in
    redirect_to root_path unless logged_in?
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

end
