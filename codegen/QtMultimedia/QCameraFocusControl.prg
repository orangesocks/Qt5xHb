$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QCAMERAFOCUSZONELIST
#endif

CLASS QCameraFocusControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD customFocusPoint
   METHOD focusMode
   METHOD focusPointMode
   METHOD focusZones
   METHOD isFocusModeSupported
   METHOD isFocusPointModeSupported
   METHOD setCustomFocusPoint
   METHOD setFocusMode
   METHOD setFocusPointMode

   METHOD onCustomFocusPointChanged
   METHOD onFocusModeChanged
   METHOD onFocusPointModeChanged
   METHOD onFocusZonesChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QPointF customFocusPoint() const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_CUSTOMFOCUSPOINT )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->customFocusPoint () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
virtual QCameraFocus::FocusModes focusMode() const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_FOCUSMODE )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->focusMode () );
  }
}


/*
virtual QCameraFocus::FocusPointMode focusPointMode() const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_FOCUSPOINTMODE )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->focusPointMode () );
  }
}


/*
virtual QCameraFocusZoneList focusZones() const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_FOCUSZONES )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCameraFocusZoneList * ptr = new QCameraFocusZoneList( obj->focusZones () );
    _qt5xhb_createReturnClass ( ptr, "QCAMERAFOCUSZONELIST" );
  }
}


/*
virtual bool isFocusModeSupported(QCameraFocus::FocusModes mode) const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_ISFOCUSMODESUPPORTED )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    RBOOL( obj->isFocusModeSupported ( (QCameraFocus::FocusModes) par1 ) );
  }
}


/*
virtual bool isFocusPointModeSupported(QCameraFocus::FocusPointMode mode) const = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_ISFOCUSPOINTMODESUPPORTED )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFocusPointModeSupported ( (QCameraFocus::FocusPointMode) hb_parni(1) ) );
  }
}


/*
virtual void setCustomFocusPoint(const QPointF & point) = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_SETCUSTOMFOCUSPOINT )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCustomFocusPoint ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setFocusMode(QCameraFocus::FocusModes mode) = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_SETFOCUSMODE )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFocusMode ( (QCameraFocus::FocusModes) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setFocusPointMode(QCameraFocus::FocusPointMode mode) = 0
*/
HB_FUNC_STATIC( QCAMERAFOCUSCONTROL_SETFOCUSPOINTMODE )
{
  QCameraFocusControl * obj = (QCameraFocusControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFocusPointMode ( (QCameraFocus::FocusPointMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
