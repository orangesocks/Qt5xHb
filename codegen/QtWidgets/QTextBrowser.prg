%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTextEdit

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextBrowser ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=int backwardHistoryCount () const
$method=|int|backwardHistoryCount|

$prototype=void clearHistory ()
$method=|void|clearHistory|

$prototype=int forwardHistoryCount () const
$method=|int|forwardHistoryCount|

$prototype=QString historyTitle ( int i ) const
$method=|QString|historyTitle|int

$prototype=QUrl historyUrl ( int i ) const
$method=|QUrl|historyUrl|int

$prototype=bool isBackwardAvailable () const
$method=|bool|isBackwardAvailable|

$prototype=bool isForwardAvailable () const
$method=|bool|isForwardAvailable|

$prototype=bool openExternalLinks () const
$method=|bool|openExternalLinks|

$prototype=bool openLinks () const
$method=|bool|openLinks|

$prototype=QStringList searchPaths () const
$method=|QStringList|searchPaths|

$prototype=void setOpenExternalLinks ( bool open )
$method=|void|setOpenExternalLinks|bool

$prototype=void setOpenLinks ( bool open )
$method=|void|setOpenLinks|bool

$prototype=void setSearchPaths ( const QStringList & paths )
$method=|void|setSearchPaths|const QStringList &

$prototype=QUrl source () const
$method=|QUrl|source|

$prototype=virtual QVariant loadResource ( int type, const QUrl & name )
$virtualMethod=|QVariant|loadResource|int,const QUrl &

$prototype=virtual void backward ()
$virtualMethod=|void|backward|

$prototype=virtual void forward ()
$virtualMethod=|void|forward|

$prototype=virtual void home ()
$virtualMethod=|void|home|

$prototype=virtual void reload ()
$virtualMethod=|void|reload|

$prototype=virtual void setSource ( const QUrl & name )
$virtualMethod=|void|setSource|const QUrl &

$beginSignals
$signal=|anchorClicked(QUrl)
$signal=|backwardAvailable(bool)
$signal=|forwardAvailable(bool)
$beginGroup
$signal=|highlighted(QUrl)
$signal=|highlighted(QString)
$endGroup
$signal=|historyChanged()
$signal=|sourceChanged(QUrl)
$endSignals

#pragma ENDDUMP
