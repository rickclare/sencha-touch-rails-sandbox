source 'http://rubygems.org'

gem 'rails', '3.1.0.rc6'

# Bundle edge Rails instead:
# gem 'rails',     git: 'git://github.com/rails/rails.git'

# Asset template engines
gem 'bundler', '~> 1.1.pre'

# Asset template engines
group :assets do
  gem 'sass-rails', '~> 3.1.0.rc'
  gem 'coffee-rails', '~> 3.1.0.rc'
  gem 'uglifier'
end

gem 'haml'
gem 'jquery-rails'
gem 'pg'
gem 'unicorn'
gem 'dalli'
gem 'rack-offline', git: 'git://github.com/rickclare/rack-offline' # using fork until master works with Ruby 1.9 and Rails 3.1 assets

# gem 'compass'
gem 'compass', git: 'git://github.com/chriseppstein/compass.git', branch: 'rails31'
#gem 'oily_png'  # Improves speed of chunky_png, for faster compass sprite file generation

# group :production, :staging do
#   gem 'therubyracer-heroku', '0.8.1.pre3'
# end

# group :development, :test do
#   gem 'therubyracer', require: 'v8'
# end

group :development do
  ##gem 'ruby-debug19', require: 'ruby-debug'
  gem 'logging'
  gem 'rb-fsevent', require: false
  gem 'guard'
  gem 'guard-livereload'
  gem 'foreman'  # Used to start thin webserver (via Procfile). To execute use: "foreman start -p 3000"
end

group :test do
  # Pretty printed test output
  gem 'turn', require: false
end
