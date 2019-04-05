%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXml

$header

#include <Qt>

#ifndef __XHARBOUR__
#include <QtXmlVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtXmlVersion>
#endif

HB_FUNC( QTXML_VERSION_STR )
{
  hb_retc( (const char *) QTXML_VERSION_STR );
}

HB_FUNC( QTXML_VERSION )
{
  hb_retni( QTXML_VERSION );
}
