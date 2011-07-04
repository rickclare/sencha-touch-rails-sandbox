App.views.Viewport = Ext.extend Ext.Panel, {
  fullscreen: true,
  layout: 'card',
  cardSwitchAnimation: 'slide',
  dockedItems: [
    {
      xtype: 'toolbar',
      title: 'Sandbox',
    },
    {
      xtype: 'tabbar',
      dock: 'bottom',
      ui   : 'dark',
      items: [
        { 
          iconCls: 'favorites',
          text: 'Favorites',
        },
        {
          iconCls: 'info',
          text: 'Information'
        }
        {
          iconCls: 'time',
          text: 'Time'
        }
      ]
    }
  ]
}
