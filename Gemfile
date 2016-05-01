source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'

gem 'puma'
gem 'nokogiri'
gem 'active_model_serializers', '~> 0.10.0.rc2'

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails', '~> 3.0'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'rails_best_practices'
  gem 'foreman'

  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bundler-audit'
  gem 'factory_girl_rails'
  gem 'faker'
end

# API
gem 'rspec_api_documentation'
gem 'apitome'

group :production, :staging do
  gem 'rails_12factor'
end

group :development do
  gem 'brakeman', require: false
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end
