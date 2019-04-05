%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDesigner

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

$prototype=virtual int addDynamicProperty ( const QString & propertyName, const QVariant & value ) = 0
$virtualMethod=|int|addDynamicProperty|const QString &,const QVariant &

$prototype=virtual bool canAddDynamicProperty ( const QString & propertyName ) const = 0
$virtualMethod=|bool|canAddDynamicProperty|const QString &

$prototype=virtual bool dynamicPropertiesAllowed () const = 0
$virtualMethod=|bool|dynamicPropertiesAllowed|

$prototype=virtual bool isDynamicProperty ( int index ) const = 0
$virtualMethod=|bool|isDynamicProperty|int

$prototype=virtual bool removeDynamicProperty ( int index ) = 0
$virtualMethod=|bool|removeDynamicProperty|int

$extraMethods

#pragma ENDDUMP
