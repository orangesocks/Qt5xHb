%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsLayoutItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=void activate ()
$method=|void|activate|

$prototype=virtual int count () const = 0
$virtualMethod=|int|count|

$prototype=virtual void invalidate ()
$virtualMethod=|void|invalidate|

$prototype=bool isActivated () const
$method=|bool|isActivated|

$prototype=virtual QGraphicsLayoutItem * itemAt ( int i ) const = 0
$virtualMethod=|QGraphicsLayoutItem *|itemAt|int

$prototype=virtual void removeAt ( int index ) = 0
$virtualMethod=|void|removeAt|int

$prototype=void setContentsMargins ( qreal left, qreal top, qreal right, qreal bottom )
$method=|void|setContentsMargins|qreal,qreal,qreal,qreal

$prototype=virtual void widgetEvent ( QEvent * e )
$virtualMethod=|void|widgetEvent|QEvent *

$prototype=virtual void getContentsMargins ( qreal * left, qreal * top, qreal * right, qreal * bottom ) const
$virtualMethod=|void|getContentsMargins|qreal *,qreal *,qreal *,qreal *

$prototype=virtual void updateGeometry ()
$virtualMethod=|void|updateGeometry|

$prototype=static bool instantInvalidatePropagation ()
$staticMethod=|bool|instantInvalidatePropagation|

$prototype=static void setInstantInvalidatePropagation ( bool enable )
$staticMethod=|void|setInstantInvalidatePropagation|bool

#pragma ENDDUMP
