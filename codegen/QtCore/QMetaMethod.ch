%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

/*
enum QMetaMethod::Access
*/
#define QMetaMethod_Private                                          0
#define QMetaMethod_Protected                                        1
#define QMetaMethod_Public                                           2

/*
enum QMetaMethod::MethodType
*/
#define QMetaMethod_Method                                           0
#define QMetaMethod_Signal                                           1
#define QMetaMethod_Slot                                             2
#define QMetaMethod_Constructor                                      3

/*
enum QMetaMethod::Attributes
*/
#define QMetaMethod_Compatibility                                    0x1
#define QMetaMethod_Cloned                                           0x2
#define QMetaMethod_Scriptable                                       0x4
