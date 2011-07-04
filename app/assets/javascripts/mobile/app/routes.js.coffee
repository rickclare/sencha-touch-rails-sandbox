Ext.Router.draw (map) ->
  map.connect 'welcome', { controller: 'Home', action: 'index' }
  
  ## fallback route - would match routes like http://mydomain.com/#users/list to the 'users' controller's 'list' action
  #map.connect ':controller/:action'