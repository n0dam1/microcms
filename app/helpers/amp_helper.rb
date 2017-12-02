module AmpHelper
  def amp_css
    controller = params[:controller]
    return Rails.application.assets["mobile/#{controller}"].to_s.html_safe if Rails.env.development?
    File.read "#{Rails.root}/public#{stylesheet_path("mobile/#{controller}", host: nil)}"
  end
end
