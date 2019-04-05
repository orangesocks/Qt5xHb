%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSvg

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtSvg/QSvgRenderer>

$prototype=QSvgWidget ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QSvgWidget ( const QString & file, QWidget * parent = 0 )
$internalConstructor=|new2|const QString &,QWidget *=0

//[1]QSvgWidget ( QWidget * parent = 0 )
//[2]QSvgWidget ( const QString & file, QWidget * parent = 0 )

HB_FUNC_STATIC( QSVGWIDGET_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QSvgWidget_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QSvgWidget_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QSvgRenderer * renderer () const
$method=|QSvgRenderer *|renderer|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void load ( const QString & file )
$internalMethod=|void|load,load1|const QString &

$prototype=void load ( const QByteArray & contents )
$internalMethod=|void|load,load2|const QByteArray &

//[1]void load ( const QString & file )
//[2]void load ( const QByteArray & contents )

HB_FUNC_STATIC( QSVGWIDGET_LOAD )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSvgWidget_load1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QSvgWidget_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=load

#pragma ENDDUMP
