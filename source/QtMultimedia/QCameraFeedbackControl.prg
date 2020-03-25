/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QCameraFeedbackControl INHERIT QMediaControl

   METHOD delete
   METHOD isEventFeedbackEnabled
   METHOD isEventFeedbackLocked
   METHOD resetEventFeedback
   METHOD setEventFeedbackEnabled
   METHOD setEventFeedbackSound

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCameraFeedbackControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCameraFeedbackControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCameraFeedbackControl>
#endif

/*
explicit QCameraFeedbackControl(QObject *parent = Q_NULLPTR) [protected]
*/

/*
~QCameraFeedbackControl()
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_DELETE )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool isEventFeedbackEnabled(EventType event) const = 0
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_ISEVENTFEEDBACKENABLED )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isEventFeedbackEnabled( (QCameraFeedbackControl::EventType) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool isEventFeedbackLocked(EventType event) const = 0
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_ISEVENTFEEDBACKLOCKED )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isEventFeedbackLocked( (QCameraFeedbackControl::EventType) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void resetEventFeedback(EventType event) = 0
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_RESETEVENTFEEDBACK )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->resetEventFeedback( (QCameraFeedbackControl::EventType) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool setEventFeedbackEnabled(EventType event, bool enabled) = 0
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_SETEVENTFEEDBACKENABLED )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
    {
#endif
      RBOOL( obj->setEventFeedbackEnabled( (QCameraFeedbackControl::EventType) hb_parni(1), PBOOL(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool setEventFeedbackSound(EventType event, const QString & filePath) = 0
*/
HB_FUNC_STATIC( QCAMERAFEEDBACKCONTROL_SETEVENTFEEDBACKSOUND )
{
  QCameraFeedbackControl * obj = (QCameraFeedbackControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
    {
#endif
      RBOOL( obj->setEventFeedbackSound( (QCameraFeedbackControl::EventType) hb_parni(1), PQSTRING(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
