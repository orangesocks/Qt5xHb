$header

#include "hbclass.ch"

CLASS QWinEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QWinEvent(int type)
*/
HB_FUNC_STATIC( QWINEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinEvent * o = new QWinEvent ( PINT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,2,0

#pragma ENDDUMP