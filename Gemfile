source 'https://rubygems.org'
ruby "2.4.1"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'jbuilder', '~> 2.5'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.7'
  gem "factory_bot_rails", "~> 4.0"
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
group :test do
  gem 'shoulda-callback-matchers', '~> 1.1.1'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'rails-controller-testing'
  gem 'capybara'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'haml-rails', '~> 1.0'

gem 'responders'
gem 'devise'
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'rails_admin'
gem 'carrierwave', '~> 1.0'
gem "mini_magick"
gem "dynamic_form"
gem 'launchy'
gem 'active_model_serializers', '~> 0.9.3'
gem 'rails_12factor', group: :production