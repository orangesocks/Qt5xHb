%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QHelpIndexWidget INHERIT QListView

   METHOD delete
   METHOD activateCurrentItem
   METHOD filterIndices

   METHOD onLinkActivated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=void activateCurrentItem ()
$method=|void|activateCurrentItem|

$prototype=void filterIndices ( const QString & filter, const QString & wildcard = QString() )
$method=|void|filterIndices|const QString &,const QString &=QString()

#pragma ENDDUMP
