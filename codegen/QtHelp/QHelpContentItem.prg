%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtHelp

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QUrl>

$deleteMethod

$prototype=QHelpContentItem * child ( int row ) const
$method=|QHelpContentItem *|child|int

$prototype=int childCount () const
$method=|int|childCount|

$prototype=int childPosition ( QHelpContentItem * child ) const
$method=|int|childPosition|QHelpContentItem *

$prototype=QHelpContentItem * parent () const
$method=|QHelpContentItem *|parent|

$prototype=int row () const
$method=|int|row|

$prototype=QString title () const
$method=|QString|title|

$prototype=QUrl url () const
$method=|QUrl|url|

$extraMethods

#pragma ENDDUMP
