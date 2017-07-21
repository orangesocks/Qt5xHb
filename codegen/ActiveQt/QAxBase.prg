$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QAXOBJECT
#endif

CLASS QAxBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD asVariant
   METHOD clear
   METHOD control
   METHOD disableClassInfo
   METHOD disableEventSink
   METHOD disableMetaObject
   METHOD dynamicCall
   METHOD generateDocumentation
   METHOD isNull
   METHOD propertyWritable
   METHOD querySubObject
   METHOD setControl
   METHOD setPropertyWritable
   METHOD verbs

   METHOD onException
   METHOD onPropertyChanged
   METHOD onSignal

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

$deleteMethod

/*
QVariant asVariant () const
*/
$method=|QVariant|asVariant|

/*
virtual void clear ()
*/
$method=|void|clear|

/*
QString control () const
*/
$method=|QString|control|

/*
void disableClassInfo ()
*/
$method=|void|disableClassInfo|

/*
void disableEventSink ()
*/
$method=|void|disableEventSink|

/*
void disableMetaObject ()
*/
$method=|void|disableMetaObject|

/*
QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
$internalMethod=|QVariant|dynamicCall,dynamicCall1|const char *,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

/*
QVariant dynamicCall ( const char * function, QList<QVariant> & vars )
*/
$internalMethod=|QVariant|dynamicCall,dynamicCall2|const char *,QList<QVariant> &

//[1]QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QVariant dynamicCall ( const char * function, QList<QVariant> & vars )

HB_FUNC_STATIC( QAXBASE_DYNAMICCALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxBase_dynamicCall1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxBase_dynamicCall2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString generateDocumentation ()
*/
$method=|QString|generateDocumentation|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
virtual bool propertyWritable ( const char * prop ) const
*/
$method=|bool|propertyWritable|const char *

/*
QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
$internalMethod=|QAxObject *|querySubObject,querySubObject1|const char *,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

/*
QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )
*/
$internalMethod=|QAxObject *|querySubObject,querySubObject2|const char *,QList<QVariant> &

//[1]QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )

HB_FUNC_STATIC( QAXBASE_QUERYSUBOBJECT )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxBase_querySubObject1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxBase_querySubObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool setControl ( const QString & )
*/
$method=|bool|setControl|const QString &

/*
virtual void setPropertyWritable ( const char * prop, bool ok )
*/
$method=|void|setPropertyWritable|const char *,bool

/*
QStringList verbs () const
*/
$method=|QStringList|verbs|

$extraMethods

#pragma ENDDUMP