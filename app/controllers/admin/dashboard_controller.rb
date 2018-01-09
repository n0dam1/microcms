class Admin::DashboardController < Admin::ApplicationController
  def index
    require_login
  end
end
