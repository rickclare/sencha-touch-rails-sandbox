Ext.regController 'Home', {
  index: ->
    @indexView = @render { xtype: 'HomeIndex' } unless @indexView
    @application.viewport.setActiveItem @indexView
}