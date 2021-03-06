source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Use aws-sdk for all aws services
gem 'aws-sdk', '2.10.71'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
gem 'elasticsearch', '5.0.4'
gem 'elasticsearch-model', '5.0.1'
gem 'faraday_middleware-aws-signers-v4', '0.1.9'
gem 'haml', '4.0.7'
gem 'haml-rails', '1.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use this gem for facebook API requests
gem 'koala', '3.0'
# Use mysql as the database for Active Record
gem 'mysql2', '0.4.9'
# Use Puma as the app server
gem 'puma', '3.7'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.1.4'
# Use Redis adapter to run Action Cable in production
gem 'redis', '4.0.1'
gem 'resque', '1.26'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# gem 'therubyracer', platforms: :ruby
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'unicorn', '5.2.0'

group :development, :test do
  gem 'awesome_print', '1.8'
  # Call 'byebug' anywhere in the code to stop execution
  # and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'pry', '0.11.2'
  # Use this gem for BDD. more info at 'https://github.com/rspec/rspec-rails'
  gem 'rspec-rails', '3.6'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %>
  # anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
