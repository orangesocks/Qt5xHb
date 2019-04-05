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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDataVisualization/Q3DScene>

using namespace QtDataVisualization;

$prototype=explicit Q3DObject(QObject *parent = Q_NULLPTR)
$constructor=|new|QObject *=Q_NULLPTR

$prototype=virtual ~Q3DObject()
$deleteMethod

%%
%% Q_PROPERTY(Q3DScene* parentScene READ parentScene)
%%

$prototype=Q3DScene *parentScene()
$method=|Q3DScene *|parentScene|

%%
%% Q_PROPERTY(QVector3D position READ position WRITE setPosition NOTIFY positionChanged)
%%

$prototype=QVector3D position() const
$method=|QVector3D|position|

$prototype=void setPosition(const QVector3D &position)
$method=|void|setPosition|const QVector3D &

%%
%%
%%

$prototype=virtual void copyValuesFrom(const Q3DObject &source)
$virtualMethod=|void|copyValuesFrom|const Q3DObject &

$prototype=void setDirty(bool dirty) [protected]

$prototype=bool isDirty() const [protected]

$beginSignals
$signal=|positionChanged(QVector3D)
$endSignals

#pragma ENDDUMP
