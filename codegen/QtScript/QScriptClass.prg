%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScript

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScriptClass(QScriptEngine * engine)
$constructor=|new|QScriptEngine *

$deleteMethod

$prototype=QScriptEngine * engine() const
$method=|QScriptEngine *|engine|

$prototype=virtual QVariant extension(Extension extension, const QVariant & argument = QVariant())
$virtualMethod=|QVariant|extension|QScriptClass::Extension,const QVariant &=QVariant()

$prototype=virtual QString name() const
$virtualMethod=|QString|name|

$prototype=virtual QScriptClassPropertyIterator * newIterator(const QScriptValue & object)
$virtualMethod=|QScriptClassPropertyIterator *|newIterator|const QScriptValue &

$prototype=virtual QScriptValue property(const QScriptValue & object, const QScriptString & name, uint id)
$virtualMethod=|QScriptValue|property|const QScriptValue &,const QScriptString &,uint

$prototype=virtual QScriptValue::PropertyFlags propertyFlags(const QScriptValue & object, const QScriptString & name, uint id)
$virtualMethod=|QScriptValue::PropertyFlags|propertyFlags|const QScriptValue &,const QScriptString &,uint

$prototype=virtual QScriptValue prototype() const
$virtualMethod=|QScriptValue|prototype|

$prototype=virtual QueryFlags queryProperty(const QScriptValue & object, const QScriptString & name, QueryFlags flags, uint * id)
$virtualMethod=|QScriptClass::QueryFlags|queryProperty|const QScriptValue &,const QScriptString &,QScriptClass::QueryFlags,uint *

$prototype=virtual void setProperty(QScriptValue & object, const QScriptString & name, uint id, const QScriptValue & value)
$virtualMethod=|void|setProperty|QScriptValue &,const QScriptString &,uint,const QScriptValue &

$prototype=virtual bool supportsExtension(Extension extension) const
$virtualMethod=|bool|supportsExtension|QScriptClass::Extension

$extraMethods

#pragma ENDDUMP
