module AmpHelper
  def amp_css
    controller = params[:controller]
    return Rails.application.assets["mobile/#{controller}"].to_s.html_safe if Rails.env.development?
    File.read "#{Rails.root}/public#{stylesheet_path("mobile/#{controller}", host: nil)}"
  end

  def render_css(path)
    raw Sass::Engine.for_file("#{Rails.root}/app/assets/stylesheets/#{path}", load_paths: ["#{Rails.root}/app/assets/stylesheets"], style: :compressed).to_css
  end
end
