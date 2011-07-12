require 'logging'

SenchaTouchRailsSandbox::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  
  ## Specify the default JavaScript compressor 
  ## Uncomment the following line, if you need to set [perform_caching = true] and having problems with serving js files
  #config.assets.js_compressor  = :uglifier

  # Raise errors, if the mailer can't send
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin
  
  config.action_mailer.default_url_options = { host: 'localhost:3000' }
  
  # Do not compress assets
  config.assets.compress = false
  
  # See everything in the log (default is :info)
  config.log_level = :debug
  
  Logging.init :debug, :info, :warn, :error, :fatal
  layout = Logging::Layouts::Pattern.new(pattern: "%d [%5l] %m\n", date_pattern: '%Y-%m-%d %H:%M:%S.%6N')
  
  config.logger = Logging::Logger['server'].tap do |l|
    #l.add_appenders Logging::Appenders::Stdout.new(layout: layout)
    l.add_appenders Logging::Appenders::File.new('default',
                        filename: Rails.root.join('log', Rails.env+'.log').to_s, 
                        layout: layout)
  end
  
end

