source 'http://rubygems.org'

gem 'rails', '3.1.0.rc4'
gem 'sprockets', '2.0.0.beta.10'  # locking to beta.10, as beta.11 breaks assets

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'unicorn'
gem 'dalli'

# Asset template engines
gem 'sass-rails', "~> 3.1.0.rc"
gem 'coffee-script'
gem 'uglifier'

gem 'jquery-rails'

group :production, :staging do
  gem 'therubyracer-heroku', '0.8.1.pre3'
end

group :development, :test do
  gem 'therubyracer', :require => 'v8'
end

group :development do
  ##gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'logging'
  gem 'rb-fsevent', :require => false
  gem 'guard'
  gem 'guard-livereload'
  gem 'foreman'  # Used to start thin webserver (via Procfile). To execute use: "foreman start -p 3000"
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
