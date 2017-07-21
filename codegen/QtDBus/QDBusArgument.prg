$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDBusArgument

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD beginStructure
   METHOD endStructure
   METHOD beginArray
   METHOD endArray
   METHOD beginMap
   METHOD endMap
   METHOD beginMapEntry
   METHOD endMapEntry
   METHOD appendVariant
   METHOD currentSignature
   METHOD currentType
   METHOD atEnd
   METHOD asVariant

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDBusArgument()
*/
$internalContructor=|new1|

/*
QDBusArgument(const QDBusArgument &other)
*/
$internalContructor=|new2|const QDBusArgument &

//[1]QDBusArgument()
//[2]QDBusArgument(const QDBusArgument &other)

HB_FUNC_STATIC( QDBUSARGUMENT_NEW )
{
  // TODO: implementar
}

$deleteMethod

/*
void beginStructure()
*/
$method=|void|beginStructure|

/*
void endStructure()
*/
$method=|void|endStructure|

/*
void beginArray(int elementMetaTypeId)
*/
$internalMethod=|void|beginArray,beginArray1|int

/*
void beginArray() const
*/
$internalMethod=|void|beginArray,beginArray2|

//[1]void beginArray(int elementMetaTypeId)
//[2]void beginArray() const

HB_FUNC_STATIC( QDBUSARGUMENT_BEGINARRAY )
{
  // TODO: implementar
}

/*
void endArray()
*/
$method=|void|endArray|

/*
void beginMap(int keyMetaTypeId, int valueMetaTypeId)
*/
$internalMethod=|void|beginMap,beginMap1|int,int

/*
void beginMap() const
*/
$internalMethod=|void|beginMap,beginMap2|

//[1]void beginMap(int keyMetaTypeId, int valueMetaTypeId)
//[2]void beginMap() const

HB_FUNC_STATIC( QDBUSARGUMENT_BEGINMAP )
{
  // TODO: implementar
}

/*
void endMap()
*/
$method=|void|endMap|

/*
void beginMapEntry()
*/
$method=|void|beginMapEntry|

/*
void endMapEntry()
*/
$method=|void|endMapEntry|

/*
void appendVariant(const QVariant &v)
*/
$method=|void|appendVariant|const QVariant &

/*
QString currentSignature() const
*/
$method=|QString|currentSignature|

/*
ElementType currentType() const
*/
$method=|QDBusArgument::ElementType|currentType|

/*
bool atEnd() const
*/
$method=|bool|atEnd|

/*
QVariant asVariant() const
*/
$method=|QVariant|asVariant|

$extraMethods

#pragma ENDDUMP