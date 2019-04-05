%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPrintSupport

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

$prototype=virtual bool abort () = 0
$virtualMethod=|bool|abort|

$prototype=virtual int metric ( QPaintDevice::PaintDeviceMetric id ) const = 0
$virtualMethod=|int|metric|QPaintDevice::PaintDeviceMetric

$prototype=virtual bool newPage () = 0
$virtualMethod=|bool|newPage|

$prototype=virtual QPrinter::PrinterState printerState () const = 0
$virtualMethod=|QPrinter::PrinterState|printerState|

$prototype=virtual QVariant property ( PrintEnginePropertyKey key ) const = 0
$virtualMethod=|QVariant|property|QPrintEngine::PrintEnginePropertyKey

$prototype=virtual void setProperty ( PrintEnginePropertyKey key, const QVariant & value ) = 0
$virtualMethod=|void|setProperty|QPrintEngine::PrintEnginePropertyKey,const QVariant &

$extraMethods

#pragma ENDDUMP
