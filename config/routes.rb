include Sprockets::Helpers::RailsHelper
  
SenchaTouchRailsSandbox::Application.routes.draw do
  root to: 'events#index'
  
  offline = Rails::Offline.configure do
    cache asset_path(Rails.env.development? ? 'mobile-debug.js' : 'mobile.js')
    cache asset_path('mobile.css')
    network "/"
  end
  
  match "/application.manifest" => offline
  
end
