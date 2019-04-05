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

$beginClassFrom=QAction

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWidgetAction(QObject * parent)
$constructor=|new|QObject *

$deleteMethod

$prototype=QWidget * defaultWidget() const
$method=|QWidget *|defaultWidget|

$prototype=void releaseWidget(QWidget * widget)
$method=|void|releaseWidget|QWidget *

$prototype=QWidget * requestWidget(QWidget * parent)
$method=|QWidget *|requestWidget|QWidget *

$prototype=void setDefaultWidget(QWidget * widget)
$method=|void|setDefaultWidget|QWidget *

#pragma ENDDUMP
