%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDeclarative

$header

/*
enum QDeclarativeProperty::PropertyTypeCategory
*/
#define QDeclarativeProperty_InvalidCategory                         0
#define QDeclarativeProperty_List                                    1
#define QDeclarativeProperty_Object                                  2
#define QDeclarativeProperty_Normal                                  3

/*
enum QDeclarativeProperty::Type
*/
#define QDeclarativeProperty_Invalid                                 0
#define QDeclarativeProperty_Property                                1
#define QDeclarativeProperty_SignalProperty                          2
