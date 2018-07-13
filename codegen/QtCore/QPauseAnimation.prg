%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractAnimation

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPauseAnimation ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QPauseAnimation ( int msecs, QObject * parent = 0 )
$internalConstructor=|new2|int,QObject *=0

//[1]QPauseAnimation ( QObject * parent = 0 )
//[2]QPauseAnimation ( int msecs, QObject * parent = 0 )

HB_FUNC_STATIC( QPAUSEANIMATION_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QPauseAnimation_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    QPauseAnimation_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setDuration ( int msecs )
$method=|void|setDuration|int

$prototype=virtual int duration () const
$virtualMethod=|int|duration|

#pragma ENDDUMP
