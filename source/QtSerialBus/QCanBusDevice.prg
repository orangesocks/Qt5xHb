/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCANBUSFRAME
REQUEST QVARIANT
#endif

CLASS QCanBusDevice INHERIT QObject

   METHOD new
   METHOD setConfigurationParameter
   METHOD configurationParameter
   METHOD configurationKeys
   METHOD writeFrame
   METHOD readFrame
   METHOD framesAvailable
   METHOD framesToWrite
   METHOD waitForFramesWritten
   METHOD waitForFramesReceived
   METHOD connectDevice
   METHOD disconnectDevice
   METHOD state
   METHOD error
   METHOD errorString
   METHOD interpretErrorFrame
   METHOD clear
   METHOD readAllFrames

   METHOD onErrorOccurred
   METHOD onFramesReceived
   METHOD onFramesWritten
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCanBusDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QCanBusDevice>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QCanBusDevice>
#endif
#endif

/*
explicit QCanBusDevice(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QCANBUSDEVICE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QCanBusDevice * o = new QCanBusDevice ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
virtual void setConfigurationParameter(int key, const QVariant &value)
*/
HB_FUNC_STATIC( QCANBUSDEVICE_SETCONFIGURATIONPARAMETER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
    {
#endif
      obj->setConfigurationParameter ( PINT(1), *PQVARIANT(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QVariant configurationParameter(int key) const
*/
HB_FUNC_STATIC( QCANBUSDEVICE_CONFIGURATIONPARAMETER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QVariant * ptr = new QVariant( obj->configurationParameter ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QVector<int> configurationKeys() const
*/
HB_FUNC_STATIC( QCANBUSDEVICE_CONFIGURATIONKEYS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector<int> list = obj->configurationKeys ();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( int i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual bool writeFrame(const QCanBusFrame &frame) = 0
*/
HB_FUNC_STATIC( QCANBUSDEVICE_WRITEFRAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCANBUSFRAME(1) )
    {
#endif
      RBOOL( obj->writeFrame ( *PQCANBUSFRAME(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QCanBusFrame readFrame()
*/
HB_FUNC_STATIC( QCANBUSDEVICE_READFRAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCanBusFrame * ptr = new QCanBusFrame( obj->readFrame () );
      _qt5xhb_createReturnClass ( ptr, "QCANBUSFRAME", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
qint64 framesAvailable() const
*/
HB_FUNC_STATIC( QCANBUSDEVICE_FRAMESAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->framesAvailable () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
qint64 framesToWrite() const
*/
HB_FUNC_STATIC( QCANBUSDEVICE_FRAMESTOWRITE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->framesToWrite () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual bool waitForFramesWritten(int msecs)
*/
HB_FUNC_STATIC( QCANBUSDEVICE_WAITFORFRAMESWRITTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->waitForFramesWritten ( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual bool waitForFramesReceived(int msecs)
*/
HB_FUNC_STATIC( QCANBUSDEVICE_WAITFORFRAMESRECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->waitForFramesReceived ( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
bool connectDevice()
*/
HB_FUNC_STATIC( QCANBUSDEVICE_CONNECTDEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->connectDevice () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void disconnectDevice()
*/
HB_FUNC_STATIC( QCANBUSDEVICE_DISCONNECTDEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->disconnectDevice ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
CanBusDeviceState state() const
*/
HB_FUNC_STATIC( QCANBUSDEVICE_STATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
CanBusError error() const
*/
HB_FUNC_STATIC( QCANBUSDEVICE_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QString errorString() const
*/
HB_FUNC_STATIC( QCANBUSDEVICE_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
virtual QString interpretErrorFrame(const QCanBusFrame &errorFrame) = 0
*/
HB_FUNC_STATIC( QCANBUSDEVICE_INTERPRETERRORFRAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCANBUSFRAME(1) )
    {
#endif
      RQSTRING( obj->interpretErrorFrame ( *PQCANBUSFRAME(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void QCanBusDevice::clear(QCanBusDevice::Directions direction)
*/
HB_FUNC_STATIC( QCANBUSDEVICE_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,12,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->clear ( (QCanBusDevice::Directions) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QVector<QCanBusFrame> QCanBusDevice::readAllFrames()
*/
HB_FUNC_STATIC( QCANBUSDEVICE_READALLFRAMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,12,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector<QCanBusFrame> list = obj->readAllFrames ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QCANBUSFRAME" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QCanBusFrame *) new QCanBusFrame ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QCANBUSFRAME", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

void QCanBusDeviceSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCANBUSDEVICE_ONERROROCCURRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDeviceSlots_connect_signal( "errorOccurred(QCanBusDevice::CanBusError)", "errorOccurred(QCanBusDevice::CanBusError)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANBUSDEVICE_ONFRAMESRECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDeviceSlots_connect_signal( "framesReceived()", "framesReceived()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANBUSDEVICE_ONFRAMESWRITTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDeviceSlots_connect_signal( "framesWritten(qint64)", "framesWritten(qint64)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QCANBUSDEVICE_ONSTATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDeviceSlots_connect_signal( "stateChanged(QCanBusDevice::CanBusDeviceState)", "stateChanged(QCanBusDevice::CanBusDeviceState)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
