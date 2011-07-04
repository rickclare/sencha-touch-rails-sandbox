Ext.regApplication {
  name: 'App',
  defaultUrl: 'welcome',
  launch: ->
    @viewport = new App.views.Viewport
}