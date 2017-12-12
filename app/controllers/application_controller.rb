class ApplicationController < ActionController::Base
  include Jpmobile::ViewSelector
  include Pundit
  before_action :set_view_path
  protect_from_forgery with: :exception

  helper_method :current_user_session, :current_user

  private

  def set_view_path
    path = request.smart_phone? ? 'mobile' : 'pc'
    prepend_view_path(Rails.root + 'app/views' + path)
  end

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session &. user
  end

  def require_login
    return redirect_to sign_in_path unless current_user
  end
end
