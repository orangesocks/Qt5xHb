%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractAxis

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,7,0

using namespace QtCharts;

$prototype=explicit QLogValueAxis(QObject *parent = Q_NULLPTR)
$constructor=5,7,0|new|QObject *=Q_NULLPTR

$prototype=QLogValueAxis(QLogValueAxisPrivate &d, QObject *parent = Q_NULLPTR) [protected]

$prototype=~QLogValueAxis()
$deleteMethod=5,7,0

%%
%% Q_PROPERTY(qreal min READ min WRITE setMin NOTIFY minChanged)
%%

$prototype=qreal min() const
$method=5,7,0|qreal|min|

$prototype=void setMin(qreal min)
$method=5,7,0|void|setMin|qreal

%%
%% Q_PROPERTY(qreal max READ max WRITE setMax NOTIFY maxChanged)
%%

$prototype=qreal max() const
$method=5,7,0|qreal|max|

$prototype=void setMax(qreal max)
$method=5,7,0|void|setMax|qreal

%%
%% Q_PROPERTY(QString labelFormat READ labelFormat WRITE setLabelFormat NOTIFY labelFormatChanged)
%%

$prototype=QString labelFormat() const
$method=5,7,0|QString|labelFormat|

$prototype=void setLabelFormat(const QString &format)
$method=5,7,0|void|setLabelFormat|const QString &

%%
%% Q_PROPERTY(qreal base READ base WRITE setBase NOTIFY baseChanged)
%%

$prototype=qreal base() const
$method=5,7,0|qreal|base|

$prototype=void setBase(qreal base)
$method=5,7,0|void|setBase|qreal

%%
%% Q_PROPERTY(int tickCount READ tickCount NOTIFY tickCountChanged)
%%

$prototype=int tickCount() const
$method=5,9,0|int|tickCount|

%%
%% Q_PROPERTY(int minorTickCount READ minorTickCount WRITE setMinorTickCount NOTIFY minorTickCountChanged)
%%

$prototype=int minorTickCount() const
$method=5,9,0|int|minorTickCount|

$prototype=void setMinorTickCount(int minorTickCount)
$method=5,9,0|void|setMinorTickCount|int

%%
%%
%%

$prototype=AxisType type() const
$method=5,7,0|QAbstractAxis::AxisType|type|

$prototype=void setRange(qreal min, qreal max)
$method=5,7,0|void|setRange|qreal,qreal

$beginSignals
$signal=5,7,0|baseChanged(qreal)
$signal=5,7,0|labelFormatChanged(QString)
$signal=5,7,0|maxChanged(qreal)
$signal=5,7,0|minChanged(qreal)
$signal=5,9,0|minorTickCountChanged(int)
$signal=5,7,0|rangeChanged(qreal,qreal)
$signal=5,9,0|tickCountChanged(int)
$endSignals

#pragma ENDDUMP
