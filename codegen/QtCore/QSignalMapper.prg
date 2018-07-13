%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=QSignalMapper(QObject *parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void setMapping(QObject *sender, int id)
$internalMethod=|void|setMapping,setMapping1|QObject *,int

$prototype=void setMapping(QObject *sender, const QString &text)
$internalMethod=|void|setMapping,setMapping2|QObject *,const QString &

$prototype=void setMapping(QObject *sender, QWidget *widget)
$internalMethod=|void|setMapping,setMapping3|QObject *,QWidget *

$prototype=void setMapping(QObject *sender, QObject *object)
$internalMethod=|void|setMapping,setMapping4|QObject *,QObject *

//[1]void setMapping(QObject *sender, int id)
//[2]void setMapping(QObject *sender, const QString &text)
//[3]void setMapping(QObject *sender, QWidget *widget)
//[4]void setMapping(QObject *sender, QObject *object)

HB_FUNC_STATIC( QSIGNALMAPPER_SETMAPPING )
{
  if( ISNUMPAR(2) && ISQOBJECT(1) && ISNUM(2) )
  {
    QSignalMapper_setMapping1();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISCHAR(2) )
  {
    QSignalMapper_setMapping2();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQWIDGET(2) )
  {
    QSignalMapper_setMapping3();
  }
  else if( ISNUMPAR(2) && ISQOBJECT(1) && ISQOBJECT(2) )
  {
    QSignalMapper_setMapping4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void removeMappings(QObject *sender)
$method=|void|removeMappings|QObject *

$prototype=QObject *mapping(int id) const
$internalMethod=|QObject *|mapping,mapping1|int

$prototype=QObject *mapping(const QString &text) const
$internalMethod=|QObject *|mapping,mapping2|const QString &

$prototype=QObject *mapping(QWidget *widget) const
$internalMethod=|QObject *|mapping,mapping3|QWidget *

$prototype=QObject *mapping(QObject *object) const
$internalMethod=|QObject *|mapping,mapping4|QObject *

//[1]QObject *mapping(int id) const
//[2]QObject *mapping(const QString &text) const
//[3]QObject *mapping(QWidget *widget) const
//[4]QObject *mapping(QObject *object) const

HB_FUNC_STATIC( QSIGNALMAPPER_MAPPING )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QSignalMapper_mapping1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSignalMapper_mapping2();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QSignalMapper_mapping3();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QSignalMapper_mapping4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void map()
$internalMethod=|void|map,map1|

$prototype=void map(QObject *sender)
$internalMethod=|void|map,map2|QObject *

//[1]void map()
//[2]void map(QObject *sender)

HB_FUNC_STATIC( QSIGNALMAPPER_MAP )
{
  if( ISNUMPAR(0) )
  {
    QSignalMapper_map1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QSignalMapper_map2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$beginSignals
$beginGroup
$signal=|mapped(int)
$signal=|mapped(QString)
$signal=|mapped(QWidget*)
$signal=|mapped(QObject*)
$endGroup
$endSignals

#pragma ENDDUMP
