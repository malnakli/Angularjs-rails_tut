source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.9'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby


# for front-end, for more info http://bower.io/
gem 'bower-rails', '~> 0.9.2'
gem 'slim-rails' ,'~> 3.0.1'
# Use jquery as the JavaScript library
gem 'jquery-rails'

# The reason is that Angular will request those assets at runtime,
# from the browser, and since your application isn't being served from your CDN,
# the browser, as a security measure, will refuse to allow Angular to read those assets.
# One solution to that problem is to configure Cross Origin Resource-Sharing (CORS),
# but this can be tricky to set up (or impossible, depending on your CDN).
# It is also very difficult to debug if it's not working properly.
# What we'd like to do is skip all of this entirely.
# Angular caches templates after it requests them the first time,
# so we really just need to pre-populate that cache.
# This way, Angular won't need to request any assets,
# thus eliminating both the asset pipeline problem as well as the same-origin security policy.
gem 'angular-rails-templates', '~> 0.1.3'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# turbolinks will be remove later since it's designed for a different type of application than that one you'd make with Angular.
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development
group :test, :development do
    gem "capybara"
    gem "selenium-webdriver"
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

