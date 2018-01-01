%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGEOROUTEREPLY
REQUEST QLOCALE
#endif

CLASS QGeoRoutingManager INHERIT QObject

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD calculateRoute
   METHOD updateRoute
   METHOD supportedTravelModes
   METHOD supportedFeatureTypes
   METHOD supportedFeatureWeights
   METHOD supportedRouteOptimizations
   METHOD supportedSegmentDetails
   METHOD supportedManeuverDetails
   METHOD setLocale
   METHOD locale
   METHOD setMeasurementSystem
   METHOD measurementSystem

   METHOD onFinished
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$deleteMethod=5,4,0

$prototype=QString managerName() const
$method=5,4,0|QString|managerName|

$prototype=int managerVersion() const
$method=5,4,0|int|managerVersion|

$prototype=QGeoRouteReply *calculateRoute(const QGeoRouteRequest &request)
$method=5,4,0|QGeoRouteReply *|calculateRoute|const QGeoRouteRequest &

$prototype=QGeoRouteReply *updateRoute(const QGeoRoute &route, const QGeoCoordinate &position)
$method=5,4,0|QGeoRouteReply *|updateRoute|const QGeoRoute &,const QGeoCoordinate &

$prototype=QGeoRouteRequest::TravelModes supportedTravelModes() const
$method=5,4,0|QGeoRouteRequest::TravelModes|supportedTravelModes|

$prototype=QGeoRouteRequest::FeatureTypes supportedFeatureTypes() const
$method=5,4,0|QGeoRouteRequest::FeatureTypes|supportedFeatureTypes|

$prototype=QGeoRouteRequest::FeatureWeights supportedFeatureWeights() const
$method=5,4,0|QGeoRouteRequest::FeatureWeights|supportedFeatureWeights|

$prototype=QGeoRouteRequest::RouteOptimizations supportedRouteOptimizations() const
$method=5,4,0|QGeoRouteRequest::RouteOptimizations|supportedRouteOptimizations|

$prototype=QGeoRouteRequest::SegmentDetails supportedSegmentDetails() const
$method=5,4,0|QGeoRouteRequest::SegmentDetails|supportedSegmentDetails|

$prototype=QGeoRouteRequest::ManeuverDetails supportedManeuverDetails() const
$method=5,4,0|QGeoRouteRequest::ManeuverDetails|supportedManeuverDetails|

$prototype=void setLocale(const QLocale &locale)
$method=5,4,0|void|setLocale|const QLocale &

$prototype=QLocale locale() const
$method=5,4,0|QLocale|locale|

$prototype=void setMeasurementSystem(QLocale::MeasurementSystem system)
$method=5,4,0|void|setMeasurementSystem|QLocale::MeasurementSystem

$prototype=QLocale::MeasurementSystem measurementSystem() const
$method=5,4,0|QLocale::MeasurementSystem|measurementSystem|

#pragma ENDDUMP
