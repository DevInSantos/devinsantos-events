ruby "2.0.0"
source 'https://rubygems.org'

gem 'rails', '4.0.1'
gem 'pg'
gem 'foreigner'
gem 'validators'
gem 'rails_admin'
gem 'devise'
gem 'gravatar_image_tag'
gem 'draper'
gem 'enumerate_it'

group :assets do
  gem 'sass-rails'
  gem 'uglifier'
end

group :development, :test do
  gem "thin"
  gem "awesome_print"
  gem "pry-meta"
  gem "sextant"
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
  gem 'rails_12factor'
end
