%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScript

$header

/*
enum QScriptClass::Extension
*/
#define QScriptClass_Callable                                        0
#define QScriptClass_HasInstance                                     1

/*
enum QScriptClass::QueryFlag
flags QScriptClass::QueryFlags
*/
#define QScriptClass_HandlesReadAccess                               0x01
#define QScriptClass_HandlesWriteAccess                              0x02
