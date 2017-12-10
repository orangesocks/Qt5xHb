$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALE
#endif

CLASS QValidator INHERIT QObject

   METHOD delete
   METHOD fixup
   METHOD locale
   METHOD setLocale
   METHOD validate

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void fixup ( QString & input ) const
$virtualMethod=|void|fixup|QString &

$prototype=QLocale locale () const
$method=|QLocale|locale|

$prototype=void setLocale ( const QLocale & locale )
$method=|void|setLocale|const QLocale &

$prototype=virtual State validate ( QString & input, int & pos ) const = 0
$virtualMethod=|QValidator::State|validate|QString &,int &

#pragma ENDDUMP
