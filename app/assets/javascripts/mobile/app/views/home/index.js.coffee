App.views.HomeIndex = Ext.extend Ext.Panel, {
  scroll: 'vertical',
  styleHtmlContent: true,
  style: null,
  html:
    "<h3>A Lover's Complaint</h3>
    <h4>a poem by</h4>
    <h3>William Shakespeare</h3>
    <p>From off a hill whose concave womb reworded</br>
    A plaintful story from a sist'ring vale,</br>
    My spirits t'attend this double voice accorded,</br>
    And down I laid to list the sad-tuned tale,</br>
    Ere long espied a fickle maid full pale,</br>
    Tearing of papers, breaking rings atwain,</br>
    Storming her world with sorrow's wind and rain.</br>
    Upon her head a platted hive of straw,</br>
    Which fortified her visage from the sun,</br>
    Whereon the thought might think sometime it saw</br>
    The carcase of a beauty spent and done.</br>
    Time had not scythed all that youth begun,</br>
    Nor youth all quit, but spite of heaven's fell rage</br>
    Some beauty peeped through lattice of seared age.</p>

    <p>Oft did she heave her napkin to her eyne,</br>
    Which on it had conceited characters,</br>
    Laund'ring the silken figures in the brine</br>
    That seasoned woe had pelleted in tears,</br>
    And often reading what contents it bears;</br>
    As often shrieking undistinguished woe</br>
    In clamours of all size, both high and low.</p>"
}

Ext.reg 'HomeIndex', App.views.HomeIndex