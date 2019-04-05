%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQml

$header

/*
enum QQmlProperty::PropertyTypeCategory
*/
#define QQmlProperty_InvalidCategory                                 0
#define QQmlProperty_List                                            1
#define QQmlProperty_Object                                          2
#define QQmlProperty_Normal                                          3

/*
enum QQmlProperty::Type
*/
#define QQmlProperty_Invalid                                         0
#define QQmlProperty_Property                                        1
#define QQmlProperty_SignalProperty                                  2
