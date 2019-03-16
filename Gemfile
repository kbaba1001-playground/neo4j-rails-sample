source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'
gem 'rails'

gem 'bootsnap', require: false
gem 'hamlit-rails'
gem 'neo4j'
gem 'puma'
gem 'sass-rails'
gem 'uglifier'

# gem 'bcrypt'

group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails'
end

group :development do
  gem 'listen'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  # gem 'capybara', '>= 2.15'
  # gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'
  gem 'database_cleaner'
  gem 'fuubar'
end
