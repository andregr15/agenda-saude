source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.1' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'pg', '>= 0.18', '< 2.0' # Use postgresql as the database for Active Record
gem 'puma', '~> 4.3' # Use Puma as the app server
gem 'sass-rails', '>= 6' # Use SCSS for stylesheets

gem 'bootsnap', '>= 1.4.2', require: false # Reduces boot times through caching; required in config/boot.rb

gem 'devise'
gem 'route_translator'

gem 'bootstrap'
gem 'font-awesome-sass'

gem 'cpf_cnpj'

gem 'tod'

gem 'jquery-rails'
gem 'smarter_csv', '~> 1.2'
gem 'sentry-raven', '~> 3.0'

gem 'newrelic_rpm'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw] # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry-rails'

  gem 'brakeman', require: false
  gem 'bullet'
  gem 'fasterer', require: false
  gem 'flay', require: false
  gem 'rails_best_practices', require: false
  gem 'reek', require: false
  gem 'rspec'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'guard', require: false
  gem 'derailed_benchmarks'
  gem 'stackprof'
end
