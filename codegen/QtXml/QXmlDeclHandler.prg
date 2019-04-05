%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual bool attributeDecl ( const QString & eName, const QString & aName, const QString & type, const QString & valueDefault, const QString & value ) = 0
$virtualMethod=|bool|attributeDecl|const QString &,const QString &,const QString &,const QString &,const QString &

$prototype=virtual QString errorString () const = 0
$virtualMethod=|QString|errorString|

$prototype=virtual bool externalEntityDecl ( const QString & name, const QString & publicId, const QString & systemId ) = 0
$virtualMethod=|bool|externalEntityDecl|const QString &,const QString &,const QString &

$prototype=virtual bool internalEntityDecl ( const QString & name, const QString & value ) = 0
$virtualMethod=|bool|internalEntityDecl|const QString &,const QString &

$extraMethods

#pragma ENDDUMP
