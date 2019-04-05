%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QList>

$prototype=QTextOption()
$internalConstructor=|new1|

$prototype=QTextOption(Qt::Alignment alignment)
$internalConstructor=|new2|Qt::Alignment

$prototype=QTextOption(const QTextOption &o)
$internalConstructor=|new3|const QTextOption &

//[1]QTextOption()
//[2]QTextOption(Qt::Alignment alignment)
//[3]QTextOption(const QTextOption &o)

HB_FUNC_STATIC( QTEXTOPTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextOption_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextOption_new2();
  }
  else if( ISNUMPAR(1) && ISQTEXTOPTION(1) )
  {
    QTextOption_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void setAlignment(Qt::Alignment alignment)
$method=|void|setAlignment|Qt::Alignment

$prototype=Qt::Alignment alignment() const
$method=|Qt::Alignment|alignment|

$prototype=void setTextDirection(Qt::LayoutDirection aDirection)
$method=|void|setTextDirection|Qt::LayoutDirection

$prototype=Qt::LayoutDirection textDirection() const
$method=|Qt::LayoutDirection|textDirection|

$prototype=void setWrapMode(WrapMode wrap)
$method=|void|setWrapMode|QTextOption::WrapMode

$prototype=WrapMode wrapMode() const
$method=|QTextOption::WrapMode|wrapMode|

$prototype=void setFlags(Flags flags)
$method=|void|setFlags|QTextOption::Flags

$prototype=Flags flags() const
$method=|QTextOption::Flags|flags|

$prototype=void setTabStop(qreal tabStop)
$method=|void|setTabStop|qreal

$prototype=qreal tabStop() const
$method=|qreal|tabStop|

$prototype=void setTabArray(const QList<qreal> &tabStops)
$method=|void|setTabArray|const QList<qreal> &

$prototype=QList<qreal> tabArray() const
$method=|QList<qreal>|tabArray|

$prototype=void setUseDesignMetrics(bool b)
$method=|void|setUseDesignMetrics|bool

$prototype=bool useDesignMetrics() const
$method=|bool|useDesignMetrics|

$extraMethods

#pragma ENDDUMP
