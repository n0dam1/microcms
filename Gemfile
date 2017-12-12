source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'activeadmin'
gem 'acts-as-taggable-on'
gem 'acts_as_list'
gem 'ancestry'
gem 'authlogic'
gem 'canonical-rails'
gem 'carrierwave'
gem 'coffee-rails', '~> 4.2'
gem 'faker'
gem 'fog-aws'
gem 'friendly_id'
gem 'gretel'
gem 'jbuilder', '~> 2.5'
gem 'jpmobile'
gem 'kaminari'
gem 'meta-tags'
gem 'mini_magick'
gem 'paper_trail'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'pundit'
gem 'rails', '~> 5.1.4'
gem 'sass-rails', '~> 5.0'
gem 'settingslogic'
gem 'sitemap_generator'
gem 'slim-rails'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker'

group :development, :test do
  gem 'byebug'
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'license_finder'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
end

group :development do
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'brakeman'
  gem 'bullet'
  gem 'bundler-audit'
  gem 'dotenv-rails'
  gem 'html2slim'
  gem 'letter_opener_web'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rack-mini-profiler'
  gem 'rubocop', require: false
  gem 'scss_lint', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'rails_12factor', group: :production
