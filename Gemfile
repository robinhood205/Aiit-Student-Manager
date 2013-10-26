# -*- coding: utf-8 -*-
source 'https://rubygems.org'

gem 'rails', '3.2.11'
# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'haml-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
  gem 'turbo-sprockets-rails3'
end

gem 'jquery-rails'

gem "composite_primary_keys", "~> 5.0.4"

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'


##########################
# 追加,修正
gem "fastercsv"
gem "rails_admin"
gem "devise"
gem "rails_admin_import", :git => "git://github.com/stephskardal/rails_admin_import.git"
#gem "rails_admin_import", :git => "git://github.com/joelvh/rails_admin_import.git"
##########################
# bootstrap
gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"



gem "i18n_generators"


group :development, :test do
  gem "rspec" 
  gem "rspec-rails"
  gem 'sqlite3'
end

group :production do
  gem "pg"
end

# cucumber-rails - https://github.com/cucumber/cucumber-rails
group :test do
  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  gem "factory_girl_rails"
  gem "rspec" 
  gem "rspec-rails"
end

# Guard-rails - https://github.com/ranmocy/guard-rails
group :development do
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-migrate'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-cucumber'
  gem 'guard-livereload'
  gem 'rack-livereload'
end
