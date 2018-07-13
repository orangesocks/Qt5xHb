%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSGBasicGeometryNode

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSGGeometryNode()
$constructor=|new|

$deleteMethod

$prototype=QSGMaterial * material() const
$method=|QSGMaterial *|material|

$prototype=QSGMaterial * opaqueMaterial() const
$method=|QSGMaterial *|opaqueMaterial|

$prototype=void setMaterial(QSGMaterial * material)
$method=|void|setMaterial|QSGMaterial *

$prototype=void setOpaqueMaterial(QSGMaterial * material)
$method=|void|setOpaqueMaterial|QSGMaterial *

#pragma ENDDUMP
