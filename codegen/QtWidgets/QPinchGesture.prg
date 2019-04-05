%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGesture

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QPointF centerPoint() const
$method=|QPointF|centerPoint|

$prototype=ChangeFlags changeFlags() const
$method=|QPinchGesture::ChangeFlags|changeFlags|

$prototype=QPointF lastCenterPoint() const
$method=|QPointF|lastCenterPoint|

$prototype=qreal lastRotationAngle() const
$method=|qreal|lastRotationAngle|

$prototype=qreal lastScaleFactor() const
$method=|qreal|lastScaleFactor|

$prototype=qreal rotationAngle() const
$method=|qreal|rotationAngle|

$prototype=qreal scaleFactor() const
$method=|qreal|scaleFactor|

$prototype=void setCenterPoint(const QPointF & value)
$method=|void|setCenterPoint|const QPointF &

$prototype=void setChangeFlags(ChangeFlags value)
$method=|void|setChangeFlags|QPinchGesture::ChangeFlags

$prototype=void setLastCenterPoint(const QPointF & value)
$method=|void|setLastCenterPoint|const QPointF &

$prototype=void setLastRotationAngle(qreal value)
$method=|void|setLastRotationAngle|qreal

$prototype=void setLastScaleFactor(qreal value)
$method=|void|setLastScaleFactor|qreal

$prototype=void setRotationAngle(qreal value)
$method=|void|setRotationAngle|qreal

$prototype=void setScaleFactor(qreal value)
$method=|void|setScaleFactor|qreal

$prototype=void setStartCenterPoint(const QPointF & value)
$method=|void|setStartCenterPoint|const QPointF &

$prototype=void setTotalChangeFlags(ChangeFlags value)
$method=|void|setTotalChangeFlags|QPinchGesture::ChangeFlags

$prototype=void setTotalRotationAngle(qreal value)
$method=|void|setTotalRotationAngle|qreal

$prototype=void setTotalScaleFactor(qreal value)
$method=|void|setTotalScaleFactor|qreal

$prototype=QPointF startCenterPoint() const
$method=|QPointF|startCenterPoint|

$prototype=ChangeFlags totalChangeFlags() const
$method=|QPinchGesture::ChangeFlags|totalChangeFlags|

$prototype=qreal totalRotationAngle() const
$method=|qreal|totalRotationAngle|

$prototype=qreal totalScaleFactor() const
$method=|qreal|totalScaleFactor|

#pragma ENDDUMP
