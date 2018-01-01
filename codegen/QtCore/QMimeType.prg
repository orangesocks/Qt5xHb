%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QMimeType

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD isValid
   METHOD isDefault
   METHOD name
   METHOD comment
   METHOD genericIconName
   METHOD iconName
   METHOD globPatterns
   METHOD parentMimeTypes
   METHOD allAncestors
   METHOD aliases
   METHOD suffixes
   METHOD preferredSuffix
   METHOD inherits
   METHOD filterString

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

#include <QStringList>

$prototype=QMimeType()
$internalConstructor=|new1|

$prototype=QMimeType(const QMimeType &other)
$internalConstructor=|new2|const QMimeType &

//[1]QMimeType()
//[2]QMimeType(const QMimeType &other)

HB_FUNC_STATIC( QMIMETYPE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMimeType_new1();
  }
  else if( ISNUMPAR(1) && ISQMIMETYPE(1) )
  {
    QMimeType_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QMimeType &other)
$method=|void|swap|QMimeType &

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=bool isDefault() const
$method=|bool|isDefault|

$prototype=QString name() const
$method=|QString|name|

$prototype=QString comment() const
$method=|QString|comment|

$prototype=QString genericIconName() const
$method=|QString|genericIconName|

$prototype=QString iconName() const
$method=|QString|iconName|

$prototype=QStringList globPatterns() const
$method=|QStringList|globPatterns|

$prototype=QStringList parentMimeTypes() const
$method=|QStringList|parentMimeTypes|

$prototype=QStringList allAncestors() const
$method=|QStringList|allAncestors|

$prototype=QStringList aliases() const
$method=|QStringList|aliases|

$prototype=QStringList suffixes() const
$method=|QStringList|suffixes|

$prototype=QString preferredSuffix() const
$method=|QString|preferredSuffix|

$prototype=bool inherits(const QString &mimeTypeName) const
$method=|bool|inherits|const QString &

$prototype=QString filterString() const
$method=|QString|filterString|

$extraMethods

#pragma ENDDUMP
