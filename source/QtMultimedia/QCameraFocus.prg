/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QCAMERAFOCUSZONELIST
#endif

CLASS QCameraFocus INHERIT QObject

   METHOD customFocusPoint
   METHOD digitalZoom
   METHOD focusMode
   METHOD focusPointMode
   METHOD focusZones
   METHOD isAvailable
   METHOD isFocusModeSupported
   METHOD isFocusPointModeSupported
   METHOD maximumDigitalZoom
   METHOD maximumOpticalZoom
   METHOD opticalZoom
   METHOD setCustomFocusPoint
   METHOD setFocusMode
   METHOD setFocusPointMode
   METHOD zoomTo

   METHOD onDigitalZoomChanged
   METHOD onFocusZonesChanged
   METHOD onMaximumDigitalZoomChanged
   METHOD onMaximumOpticalZoomChanged
   METHOD onOpticalZoomChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraFocus
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraFocus>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraFocus>
#endif

/*
QCameraFocus(QCamera *camera) (private)
*/

/*
~QCameraFocus() (private)
*/

/*
FocusModes focusMode() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_FOCUSMODE )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->focusMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFocusMode(FocusModes mode)
*/
HB_FUNC_STATIC( QCAMERAFOCUS_SETFOCUSMODE )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFocusMode ( (QCameraFocus::FocusModes) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
FocusPointMode focusPointMode() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_FOCUSPOINTMODE )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->focusPointMode () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setFocusPointMode(FocusPointMode mode)
*/
HB_FUNC_STATIC( QCAMERAFOCUS_SETFOCUSPOINTMODE )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setFocusPointMode ( (QCameraFocus::FocusPointMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPointF customFocusPoint() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_CUSTOMFOCUSPOINT )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QPointF * ptr = new QPointF( obj->customFocusPoint () );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCustomFocusPoint(const QPointF & point)
*/
HB_FUNC_STATIC( QCAMERAFOCUS_SETCUSTOMFOCUSPOINT )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQPOINTF(1) )
    {
      obj->setCustomFocusPoint ( *PQPOINTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QCameraFocusZoneList focusZones() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_FOCUSZONES )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QCameraFocusZoneList list = obj->focusZones ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QCAMERAFOCUSZONE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QCameraFocusZone *) new QCameraFocusZone( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QCAMERAFOCUSZONE", HB_ERR_ARGS_BASEPARAMS );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal opticalZoom() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_OPTICALZOOM )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->opticalZoom () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal digitalZoom() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_DIGITALZOOM )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->digitalZoom () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isAvailable() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_ISAVAILABLE )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isAvailable () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isFocusModeSupported(FocusModes mode) const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_ISFOCUSMODESUPPORTED )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->isFocusModeSupported ( (QCameraFocus::FocusModes) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isFocusPointModeSupported(FocusPointMode mode) const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_ISFOCUSPOINTMODESUPPORTED )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->isFocusPointModeSupported ( (QCameraFocus::FocusPointMode) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal maximumDigitalZoom() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_MAXIMUMDIGITALZOOM )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->maximumDigitalZoom () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal maximumOpticalZoom() const
*/
HB_FUNC_STATIC( QCAMERAFOCUS_MAXIMUMOPTICALZOOM )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->maximumOpticalZoom () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void zoomTo(qreal opticalZoom, qreal digitalZoom)
*/
HB_FUNC_STATIC( QCAMERAFOCUS_ZOOMTO )
{
  QCameraFocus * obj = (QCameraFocus *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      obj->zoomTo ( PQREAL(1), PQREAL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QCameraFocusSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCAMERAFOCUS_ONDIGITALZOOMCHANGED )
{
  QCameraFocusSlots_connect_signal( "digitalZoomChanged(qreal)", "digitalZoomChanged(qreal)" );
}

HB_FUNC_STATIC( QCAMERAFOCUS_ONFOCUSZONESCHANGED )
{
  QCameraFocusSlots_connect_signal( "focusZonesChanged()", "focusZonesChanged()" );
}

HB_FUNC_STATIC( QCAMERAFOCUS_ONMAXIMUMDIGITALZOOMCHANGED )
{
  QCameraFocusSlots_connect_signal( "maximumDigitalZoomChanged(qreal)", "maximumDigitalZoomChanged(qreal)" );
}

HB_FUNC_STATIC( QCAMERAFOCUS_ONMAXIMUMOPTICALZOOMCHANGED )
{
  QCameraFocusSlots_connect_signal( "maximumOpticalZoomChanged(qreal)", "maximumOpticalZoomChanged(qreal)" );
}

HB_FUNC_STATIC( QCAMERAFOCUS_ONOPTICALZOOMCHANGED )
{
  QCameraFocusSlots_connect_signal( "opticalZoomChanged(qreal)", "opticalZoomChanged(qreal)" );
}

#pragma ENDDUMP
