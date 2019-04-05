%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual int columnExtent() const = 0
$virtualMethod=|int|columnExtent|

$prototype=virtual QList<QAccessibleInterface*> columnHeaderCells() const = 0
$virtualMethod=|QList<QAccessibleInterface *>|columnHeaderCells|

$prototype=virtual int columnIndex() const = 0
$virtualMethod=|int|columnIndex|

$prototype=virtual int rowExtent() const = 0
$virtualMethod=|int|rowExtent|

$prototype=virtual QList<QAccessibleInterface*> rowHeaderCells() const = 0
$virtualMethod=|QList<QAccessibleInterface *>|rowHeaderCells|

$prototype=virtual int rowIndex() const = 0
$virtualMethod=|int|rowIndex|

$prototype=virtual bool isSelected() const = 0
$virtualMethod=|bool|isSelected|

$prototype=virtual QAccessibleInterface* table() const = 0
$virtualMethod=|QAccessibleInterface *|table|

$extraMethods

#pragma ENDDUMP
