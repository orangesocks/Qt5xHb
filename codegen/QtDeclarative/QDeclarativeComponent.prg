%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDeclarative

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDeclarative/QDeclarativeContext>

$prototype=QDeclarativeComponent ( QDeclarativeEngine * engine, QObject * parent = 0 )
$internalConstructor=|new1|QDeclarativeEngine *,QObject *=0

$prototype=QDeclarativeComponent ( QDeclarativeEngine * engine, const QString & fileName, QObject * parent = 0 )
$internalConstructor=|new2|QDeclarativeEngine *,const QString &,QObject *=0

$prototype=QDeclarativeComponent ( QDeclarativeEngine * engine, const QUrl & url, QObject * parent = 0 )
$internalConstructor=|new3|QDeclarativeEngine *,const QUrl &,QObject *=0

//[1]QDeclarativeComponent ( QDeclarativeEngine * engine, QObject * parent = 0 )
//[2]QDeclarativeComponent ( QDeclarativeEngine * engine, const QString & fileName, QObject * parent = 0 )
//[3]QDeclarativeComponent ( QDeclarativeEngine * engine, const QUrl & url, QObject * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVECOMPONENT_NEW )
{
  if( ISBETWEEN(1,2) && ISQDECLARATIVEENGINE(1) && ISOPTQOBJECT(2) )
  {
    QDeclarativeComponent_new1();
  }
  else if( ISBETWEEN(2,3) && ISQDECLARATIVEENGINE(1) && ISCHAR(2) && ISOPTQOBJECT(3) )
  {
    QDeclarativeComponent_new2();
  }
  else if( ISBETWEEN(2,3) && ISQDECLARATIVEENGINE(1) && ISQURL(2) && ISOPTQOBJECT(3) )
  {
    QDeclarativeComponent_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=virtual QObject * beginCreate ( QDeclarativeContext * context )
$virtualMethod=|QObject *|beginCreate|QDeclarativeContext *

$prototype=virtual void completeCreate ()
$virtualMethod=|void|completeCreate|

$prototype=virtual QObject * create ( QDeclarativeContext * context = 0 )
$virtualMethod=|QObject *|create|QDeclarativeContext *=0

$prototype=QDeclarativeContext * creationContext () const
$method=|QDeclarativeContext *|creationContext|

$prototype=QList<QDeclarativeError> errors () const
$method=|QList<QDeclarativeError>|errors|

$prototype=bool isError () const
$method=|bool|isError|

$prototype=bool isLoading () const
$method=|bool|isLoading|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=bool isReady () const
$method=|bool|isReady|

$prototype=void loadUrl ( const QUrl & url )
$method=|void|loadUrl|const QUrl &

$prototype=qreal progress () const
$method=|qreal|progress|

$prototype=void setData ( const QByteArray & data, const QUrl & url )
$method=|void|setData|const QByteArray &,const QUrl &

$prototype=Status status () const
$method=|QDeclarativeComponent::Status|status|

$prototype=QUrl url () const
$method=|QUrl|url|

$beginSignals
$signal=|progressChanged(qreal)
$signal=|statusChanged(QDeclarativeComponent::Status)
$endSignals

#pragma ENDDUMP
