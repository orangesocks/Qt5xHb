%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

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

$prototype=QActionGroup ( QObject * parent )
$constructor=|new|QObject *

$deleteMethod

$prototype=QAction * addAction ( QAction * action )
$internalMethod=|QAction *|addAction,addAction1|QAction *

$prototype=QAction * addAction ( const QString & text )
$internalMethod=|QAction *|addAction,addAction2|const QString &

$prototype=QAction * addAction ( const QIcon & icon, const QString & text )
$internalMethod=|QAction *|addAction,addAction3|const QIcon &,const QString &

//[1]QAction * addAction ( QAction * action )
//[2]QAction * addAction ( const QString & text )
//[3]QAction * addAction ( const QIcon & icon, const QString & text )

HB_FUNC_STATIC( QACTIONGROUP_ADDACTION )
{
  if( ISNUMPAR(1) && ISQACTION(1) )
  {
    QActionGroup_addAction1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QActionGroup_addAction2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QActionGroup_addAction3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addAction

$prototype=QAction * checkedAction () const
$method=|QAction *|checkedAction|

$prototype=bool isEnabled () const
$method=|bool|isEnabled|

$prototype=bool isExclusive () const
$method=|bool|isExclusive|

$prototype=bool isVisible () const
$method=|bool|isVisible|

$prototype=void removeAction ( QAction * action )
$method=|void|removeAction|QAction *

$prototype=void setDisabled ( bool b )
$method=|void|setDisabled|bool

$prototype=void setEnabled ( bool )
$method=|void|setEnabled|bool

$prototype=void setExclusive ( bool )
$method=|void|setExclusive|bool

$prototype=void setVisible ( bool )
$method=|void|setVisible|bool

$beginSignals
$signal=|hovered(QAction*)
$signal=|triggered(QAction*)
$endSignals

#pragma ENDDUMP
