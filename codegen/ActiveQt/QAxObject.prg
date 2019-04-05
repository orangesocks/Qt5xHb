%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=ActiveQt

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QAxBase

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>

$prototype=QAxObject ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QAxObject ( const QString & c, QObject * parent = 0 )
$internalConstructor=|new2|const QString &,QObject *=0

$prototype=QAxObject ( IUnknown * iface, QObject * parent = 0 )
$internalConstructor=|new3|IUnknown *,QObject *=0

//[1]QAxObject ( QObject * parent = 0 )
//[2]QAxObject ( const QString & c, QObject * parent = 0 )
//[3]QAxObject ( IUnknown * iface, QObject * parent = 0 )

HB_FUNC_STATIC( QAXOBJECT_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QAxObject_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QAxObject_new2();
  }
  else if( ISBETWEEN(1,2) && ISPOINTER(1) && ISOPTQOBJECT(2) )
  {
    QAxObject_new3(); // TODO: revisar parametro 'IUnknown * iface'
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool doVerb ( const QString & verb )
$method=|bool|doVerb|const QString &

// QAxBase methods - begin

// m�todos da classe QAxBase, adicionados aqui, para
// resolver problemas na utiliza��o dos m�todos

$prototype=QVariant asVariant () const
$method=|QVariant|asVariant|

$prototype=virtual void clear ()
$virtualMethod=|void|clear|

$prototype=QString control () const
$method=|QString|control|

$prototype=void disableClassInfo ()
$method=|void|disableClassInfo|

$prototype=void disableEventSink ()
$method=|void|disableEventSink|

$prototype=void disableMetaObject ()
$method=|void|disableMetaObject|

$prototype=QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
$internalMethod=|QVariant|dynamicCall,dynamicCall1|const char *,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

$prototype=QVariant dynamicCall ( const char * function, QList<QVariant> & vars )
$internalMethod=|QVariant|dynamicCall,dynamicCall2|const char *,QList<QVariant> &

//[1]QVariant dynamicCall ( const char * function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QVariant dynamicCall ( const char * function, QList<QVariant> & vars )

HB_FUNC_STATIC( QAXOBJECT_DYNAMICCALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxObject_dynamicCall1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxObject_dynamicCall2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=dynamicCall

$prototype=QString generateDocumentation ()
$method=|QString|generateDocumentation|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=virtual bool propertyWritable ( const char * prop ) const
$virtualMethod=|bool|propertyWritable|const char *

$prototype=QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
$internalMethod=|QAxObject *|querySubObject,querySubObject1|const char *,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

$prototype=QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )
$internalMethod=|QAxObject *|querySubObject,querySubObject2|const char *,QList<QVariant> &

//[1]QAxObject * querySubObject ( const char * name, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QAxObject * querySubObject ( const char * name, QList<QVariant> & vars )

HB_FUNC_STATIC( QAXOBJECT_QUERYSUBOBJECT )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxObject_querySubObject1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxObject_querySubObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=querySubObject

$prototype=bool setControl ( const QString & )
$method=|bool|setControl|const QString &

$prototype=virtual void setPropertyWritable ( const char * prop, bool ok )
$virtualMethod=|void|setPropertyWritable|const char *,bool

$prototype=QStringList verbs () const
$method=|QStringList|verbs|

// QAxBase methods - end

$beginSignals
$signal=|exception(int,QString,QString,QString)
$signal=|propertyChanged(QString)
$signal=|signal(QString,int,void*)
$endSignals

#pragma ENDDUMP
