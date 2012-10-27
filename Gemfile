source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'pg'
gem 'foreigner'
gem 'validators'
gem 'rails_admin'
gem "devise"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development, :test do
  gem "thin"
  gem "awesome_print"
  gem "pry-rails"
  gem 'rspec-rails'
end

group :test do
  gem "shoulda-matchers"
  gem "factory_girl"
  gem "factory_girl-preload"
  gem 'capybara'
end

group :production do
  gem 'unicorn'
end