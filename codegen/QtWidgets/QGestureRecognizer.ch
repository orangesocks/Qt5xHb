%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

/*
enum QGestureRecognizer::ResultFlag
flags QGestureRecognizer::Result
*/
#define QGestureRecognizer_Ignore                                    0x0001
#define QGestureRecognizer_MayBeGesture                              0x0002
#define QGestureRecognizer_TriggerGesture                            0x0004
#define QGestureRecognizer_FinishGesture                             0x0008
#define QGestureRecognizer_CancelGesture                             0x0010
#define QGestureRecognizer_ConsumeEventHint                          0x0100
