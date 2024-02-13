# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem "rake"
gem "puma"

gem 'roda'

gem 'i18n'
gem 'config'

gem 'sequel'
gem 'sequel-seed', '~> 1.1', '>= 1.1.2'
gem 'sequel_secure_password'
gem 'pg'

group :development, :test do
  gem 'byebug'
end

group :development do
  gem 'amazing_print'
end

gem 'bunny'
gem 'ruby-kafka'

group :test do
  gem 'rspec'
  gem 'factory_bot'
  gem 'rack-test'
  gem 'database_cleaner-sequel'
end
