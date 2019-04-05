%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtScript

$header

/*
enum QScriptContext::Error
*/
#define QScriptContext_ReferenceError                                1
#define QScriptContext_SyntaxError                                   2
#define QScriptContext_TypeError                                     3
#define QScriptContext_RangeError                                    4
#define QScriptContext_URIError                                      5
#define QScriptContext_UnknownError                                  0

/*
enum QScriptContext::ExecutionState
*/
#define QScriptContext_NormalState                                   0
#define QScriptContext_ExceptionState                                1
