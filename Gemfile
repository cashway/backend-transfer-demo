source "https://rubygems.org"

ruby "3.2.2"
gem "rails", "~> 7.1"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false
gem 'devise', '~> 4.7'
gem 'devise_token_auth', '~> 1.2', '>= 1.2.2'
gem 'rswag-api'
gem 'rswag-ui'

group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
  gem "rspec-rails", "~> 5.0"
  gem 'rswag-specs'
end

group :development do
  gem 'byebug'
end
