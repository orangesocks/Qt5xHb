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

#include <QStringList>

$prototype=QAxScript ( const QString & name, QAxScriptManager * manager )
$constructor=|new|const QString &,QAxScriptManager *

$deleteMethod

$prototype=QVariant call ( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
$internalMethod=|QVariant|call,call1|const QString &,const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant(),const QVariant &=QVariant()

$prototype=QVariant call ( const QString & function, QList<QVariant> & arguments )
$internalMethod=|QVariant|call,call2|const QString &,QList<QVariant> &

//[1]QVariant call ( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QVariant call ( const QString & function, QList<QVariant> & arguments )

HB_FUNC_STATIC( QAXSCRIPT_CALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxScript_call1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxScript_call2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QStringList functions ( FunctionFlags flags = FunctionNames ) const
$method=|QStringList|functions|QAxScript::FunctionFlags=QAxScript::FunctionNames

$prototype=bool load ( const QString & code, const QString & language = QString() )
$method=|bool|load|const QString &,const QString &=QString()

$prototype=QString scriptCode () const
$method=|QString|scriptCode|

$prototype=QAxScriptEngine * scriptEngine () const
$method=|QAxScriptEngine *|scriptEngine|

$prototype=QString scriptName () const
$method=|QString|scriptName|

$beginSignals
$signal=|entered()
$signal=|error(int,QString,int,QString)
$beginGroup
$signal=|finished()
$signal=|finished(QVariant)
$signal=|finished(int,QString,QString,QString)
$endGroup
$signal=|stateChanged(int)
$endSignals

#pragma ENDDUMP
