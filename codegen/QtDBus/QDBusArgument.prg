%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDBus

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDBusArgument()
$internalConstructor=|new1|

$prototype=QDBusArgument(const QDBusArgument &other)
$internalConstructor=|new2|const QDBusArgument &

//[1]QDBusArgument()
//[2]QDBusArgument(const QDBusArgument &other)

HB_FUNC_STATIC( QDBUSARGUMENT_NEW )
{
  // TODO: implementar
}

$deleteMethod

$prototype=void beginStructure()
$method=|void|beginStructure|

$prototype=void endStructure()
$method=|void|endStructure|

$prototype=void beginArray(int elementMetaTypeId)
$internalMethod=|void|beginArray,beginArray1|int

$prototype=void beginArray() const
$internalMethod=|void|beginArray,beginArray2|

//[1]void beginArray(int elementMetaTypeId)
//[2]void beginArray() const

HB_FUNC_STATIC( QDBUSARGUMENT_BEGINARRAY )
{
  // TODO: implementar
}
$addMethod=beginArray

$prototype=void endArray()
$method=|void|endArray|

$prototype=void beginMap(int keyMetaTypeId, int valueMetaTypeId)
$internalMethod=|void|beginMap,beginMap1|int,int

$prototype=void beginMap() const
$internalMethod=|void|beginMap,beginMap2|

//[1]void beginMap(int keyMetaTypeId, int valueMetaTypeId)
//[2]void beginMap() const

HB_FUNC_STATIC( QDBUSARGUMENT_BEGINMAP )
{
  // TODO: implementar
}
$addMethod=beginMap

$prototype=void endMap()
$method=|void|endMap|

$prototype=void beginMapEntry()
$method=|void|beginMapEntry|

$prototype=void endMapEntry()
$method=|void|endMapEntry|

$prototype=void appendVariant(const QVariant &v)
$method=|void|appendVariant|const QVariant &

$prototype=QString currentSignature() const
$method=|QString|currentSignature|

$prototype=ElementType currentType() const
$method=|QDBusArgument::ElementType|currentType|

$prototype=bool atEnd() const
$method=|bool|atEnd|

$prototype=QVariant asVariant() const
$method=|QVariant|asVariant|

$extraMethods

#pragma ENDDUMP
