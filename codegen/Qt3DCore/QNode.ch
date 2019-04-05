%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DCore

$header

/*
enum QNode::PropertyTrackingMode : quint16
*/
#define QNode_TrackFinalValues                                       0
#define QNode_DontTrackValues                                        1
#define QNode_TrackAllValues                                         2
