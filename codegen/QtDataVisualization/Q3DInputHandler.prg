%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtDataVisualization

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstract3DInputHandler

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtDataVisualization;

$prototype=explicit Q3DInputHandler(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=virtual ~Q3DInputHandler()
$deleteMethod

%%
%% Q_PROPERTY(bool rotationEnabled READ isRotationEnabled WRITE setRotationEnabled NOTIFY rotationEnabledChanged)
%%

$prototype=bool isRotationEnabled() const
$method=|bool|isRotationEnabled|

$prototype=void setRotationEnabled(bool enable)
$method=|void|setRotationEnabled|bool

%%
%% Q_PROPERTY(bool zoomEnabled READ isZoomEnabled WRITE setZoomEnabled NOTIFY zoomEnabledChanged)
%%

$prototype=bool isZoomEnabled() const
$method=|bool|isZoomEnabled|

$prototype=void setZoomEnabled(bool enable)
$method=|void|setZoomEnabled|bool

%%
%% Q_PROPERTY(bool selectionEnabled READ isSelectionEnabled WRITE setSelectionEnabled NOTIFY selectionEnabledChanged)
%%

$prototype=bool isSelectionEnabled() const
$method=|bool|isSelectionEnabled|

$prototype=void setSelectionEnabled(bool enable)
$method=|void|setSelectionEnabled|bool

%%
%% Q_PROPERTY(bool zoomAtTargetEnabled READ isZoomAtTargetEnabled WRITE setZoomAtTargetEnabled NOTIFY zoomAtTargetEnabledChanged)
%%

$prototype=bool isZoomAtTargetEnabled() const
$method=|bool|isZoomAtTargetEnabled|

$prototype=void setZoomAtTargetEnabled(bool enable)
$method=|void|setZoomAtTargetEnabled|bool

%%
%%
%%

%% TODO: revise methods below

$prototype=virtual void mousePressEvent(QMouseEvent *event, const QPoint &mousePos)
%% $virtualMethod=|void|mousePressEvent|QMouseEvent *,const QPoint &

$prototype=virtual void mouseReleaseEvent(QMouseEvent *event, const QPoint &mousePos)
%% $virtualMethod=|void|mouseReleaseEvent|QMouseEvent *,const QPoint &

$prototype=virtual void mouseMoveEvent(QMouseEvent *event, const QPoint &mousePos)
%% $virtualMethod=|void|mouseMoveEvent|QMouseEvent *,const QPoint &

%% #if QT_CONFIG(wheelevent)
$prototype=virtual void wheelEvent(QWheelEvent *event)
%% $virtualMethod=|void|wheelEvent|QWheelEvent *
%% #endif

$beginSignals
$signal=|rotationEnabledChanged(bool)
$signal=|selectionEnabledChanged(bool)
$signal=|zoomAtTargetEnabledChanged(bool)
$signal=|zoomEnabledChanged(bool)
$endSignals

#pragma ENDDUMP
