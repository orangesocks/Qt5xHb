%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include <Qt>

#ifndef __XHARBOUR__
#include <QtWidgetsVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgetsVersion>
#endif

HB_FUNC( QTWIDGETS_VERSION_STR )
{
  hb_retc( (const char *) QTWIDGETS_VERSION_STR );
}

HB_FUNC( QTWIDGETS_VERSION )
{
  hb_retni( QTWIDGETS_VERSION );
}
