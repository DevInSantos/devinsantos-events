ruby "2.2.2"
source 'https://rubygems.org'

gem 'rails', '4.2.0'
gem 'pg'
gem 'validators'
gem 'rails_admin'
gem 'devise'
gem 'gravatar_image_tag'
gem 'draper'
gem 'enumerate_it'
gem 'rack-cache'
gem 'dalli'
gem 'kgio'

group :assets do
  gem 'sass-rails', "~> 4.0.2"
  gem 'uglifier'
end

group :development, :test do
  gem "thin"
  gem "awesome_print"
  gem "pry-meta"
  gem "sextant"
  gem 'rspec-rails', '~> 2.14.2'
end

group :test do
  gem "shoulda-matchers"
  gem "factory_girl"
  gem "factory_girl-preload"
  gem 'capybara'
end

group :production do
  gem 'unicorn'
  gem 'rails_12factor'
end
