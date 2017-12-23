$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QAbstractUriResolver INHERIT QObject

   METHOD delete
   METHOD resolve

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>

$deleteMethod

$prototype=virtual QUrl resolve ( const QUrl & relative, const QUrl & baseURI ) const = 0
$virtualMethod=|QUrl|resolve|const QUrl &,const QUrl &

#pragma ENDDUMP
