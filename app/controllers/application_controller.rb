class ApplicationController < ActionController::Base
  include Jpmobile::ViewSelector
  before_action :set_view_path
  protect_from_forgery with: :exception

  private

  def set_view_path
    path = request.smart_phone? ? 'mobile' : 'pc'
    prepend_view_path(Rails.root + 'app/views' + path)
  end
end
