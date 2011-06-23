# More info at https://github.com/guard/guard#readme

guard 'livereload' do
  watch(%r{app/.+\.(erb|haml)})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.html})
  watch(%r{config/locales/.+\.yml})
  
  # Rails 3.1 & Sprockets
  watch(%r{app/assets/javascripts/}) {
    # Loading 'application.js' multiple times, as first compile of *.coffee scripts can result in an error
    js = 'assets/application.js'
    [ js ]
  }  
  
  watch(%r{app/assets/stylesheets/}) { 'assets/application.css' }
end
