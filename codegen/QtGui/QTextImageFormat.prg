$header

#include "hbclass.ch"

CLASS QTextImageFormat INHERIT QTextCharFormat

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setName
   METHOD name
   METHOD setWidth
   METHOD width
   METHOD setHeight
   METHOD height

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextImageFormat()
$constructor=|new|

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=void setName(const QString &name)
$method=|void|setName|const QString &

$prototype=QString name() const
$method=|QString|name|

$prototype=void setWidth(qreal width)
$method=|void|setWidth|qreal

$prototype=qreal width() const
$method=|qreal|width|

$prototype=void setHeight(qreal height)
$method=|void|setHeight|qreal

$prototype=qreal height() const
$method=|qreal|height|

#pragma ENDDUMP
