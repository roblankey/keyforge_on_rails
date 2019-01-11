source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

# jsonapi_suite
gem 'jsonapi-rails', '~> 0.3.0'
gem 'jsonapi_spec_helpers', '~> 0.4', require: false
gem 'jsonapi_suite', '~> 0.7'
gem 'jsonapi_swagger_helpers', '~> 0.6', require: false
gem 'kaminari', '~> 1.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'factory_bot_rails', '~> 4.0'
  gem 'pry'
  gem 'rspec-rails', '~> 3.5'
  gem 'swagger-diff', '~> 1.1'
  gem 'brakeman', '~> 4.3.1'
end

group :development do
end

group :test do
  gem 'database_cleaner', '~> 1.6'
  gem 'faker', '~> 1.7'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'simplecov', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
