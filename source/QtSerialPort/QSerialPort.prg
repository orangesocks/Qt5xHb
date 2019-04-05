/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QSerialPort INHERIT QIODevice

   METHOD new
   METHOD delete
   METHOD setPortName
   METHOD portName
   METHOD setPort
   METHOD open
   METHOD close
   METHOD setSettingsRestoredOnClose
   METHOD settingsRestoredOnClose
   METHOD setBaudRate
   METHOD baudRate
   METHOD setDataBits
   METHOD dataBits
   METHOD setParity
   METHOD parity
   METHOD setStopBits
   METHOD stopBits
   METHOD setFlowControl
   METHOD flowControl
   METHOD setDataTerminalReady
   METHOD isDataTerminalReady
   METHOD setRequestToSend
   METHOD isRequestToSend
   METHOD pinoutSignals
   METHOD flush
   METHOD clear
   METHOD atEnd
   METHOD setDataErrorPolicy
   METHOD dataErrorPolicy
   METHOD error
   METHOD clearError
   METHOD readBufferSize
   METHOD setReadBufferSize
   METHOD isSequential
   METHOD bytesAvailable
   METHOD bytesToWrite
   METHOD canReadLine
   METHOD waitForReadyRead
   METHOD waitForBytesWritten
   METHOD sendBreak
   METHOD setBreakEnabled

   METHOD onBaudRateChanged
   METHOD onDataBitsChanged
   METHOD onParityChanged
   METHOD onStopBitsChanged
   METHOD onFlowControlChanged
   METHOD onDataErrorPolicyChanged
   METHOD onDataTerminalReadyChanged
   METHOD onRequestToSendChanged
   METHOD onError
   METHOD onSettingsRestoredOnCloseChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSerialPort
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtSerialPort/QSerialPort>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QtSerialPort/QSerialPort>
#endif
#endif

/*
QSerialPort(QObject *parent = 0)
*/
void QSerialPort_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * o = new QSerialPort ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

/*
QSerialPort(const QString &name, QObject *parent = 0)
*/
void QSerialPort_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * o = new QSerialPort ( PQSTRING(1), OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

/*
QSerialPort(const QSerialPortInfo &info, QObject *parent = 0)
*/
void QSerialPort_new3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * o = new QSerialPort ( *PQSERIALPORTINFO(1), OPQOBJECT(2,0) );
  _qt5xhb_returnNewObject( o, false );
#endif
}

//[1]QSerialPort(QObject *parent = 0)
//[2]QSerialPort(const QString &name, QObject *parent = 0)
//[3]QSerialPort(const QSerialPortInfo &info, QObject *parent = 0)

HB_FUNC_STATIC( QSERIALPORT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QSerialPort_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QSerialPort_new2();
  }
  else if( ISBETWEEN(1,2) && ISQSERIALPORTINFO(1) && ISOPTQOBJECT(2) )
  {
    QSerialPort_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QSERIALPORT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

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
#endif
}

/*
void setPortName(const QString &name)
*/
HB_FUNC_STATIC( QSERIALPORT_SETPORTNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setPortName ( PQSTRING(1) );
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
QString portName() const
*/
HB_FUNC_STATIC( QSERIALPORT_PORTNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->portName () );
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
void setPort(const QSerialPortInfo &info)
*/
HB_FUNC_STATIC( QSERIALPORT_SETPORT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSERIALPORTINFO(1) )
    {
#endif
      obj->setPort ( *PQSERIALPORTINFO(1) );
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
bool open(OpenMode mode) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_OPEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->open ( (QIODevice::OpenMode) hb_parni(1) ) );
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
void close() Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_CLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->close ();
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
void setSettingsRestoredOnClose(bool restore)
*/
HB_FUNC_STATIC( QSERIALPORT_SETSETTINGSRESTOREDONCLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setSettingsRestoredOnClose ( PBOOL(1) );
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
bool settingsRestoredOnClose() const
*/
HB_FUNC_STATIC( QSERIALPORT_SETTINGSRESTOREDONCLOSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->settingsRestoredOnClose () );
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
bool setBaudRate(qint32 baudRate, Directions dir = AllDirections)
*/
HB_FUNC_STATIC( QSERIALPORT_SETBAUDRATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
#endif
      RBOOL( obj->setBaudRate ( PQINT32(1), ISNIL(2)? (QSerialPort::Directions) QSerialPort::AllDirections : (QSerialPort::Directions) hb_parni(2) ) );
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
qint32 baudRate(Directions dir = AllDirections) const
*/
HB_FUNC_STATIC( QSERIALPORT_BAUDRATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RQINT32( obj->baudRate ( ISNIL(1)? (QSerialPort::Directions) QSerialPort::AllDirections : (QSerialPort::Directions) hb_parni(1) ) );
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
bool setDataBits(DataBits dataBits)
*/
HB_FUNC_STATIC( QSERIALPORT_SETDATABITS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->setDataBits ( (QSerialPort::DataBits) hb_parni(1) ) );
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
DataBits dataBits() const
*/
HB_FUNC_STATIC( QSERIALPORT_DATABITS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->dataBits () );
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
bool setParity(Parity parity)
*/
HB_FUNC_STATIC( QSERIALPORT_SETPARITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->setParity ( (QSerialPort::Parity) hb_parni(1) ) );
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
Parity parity() const
*/
HB_FUNC_STATIC( QSERIALPORT_PARITY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->parity () );
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
bool setStopBits(StopBits stopBits)
*/
HB_FUNC_STATIC( QSERIALPORT_SETSTOPBITS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->setStopBits ( (QSerialPort::StopBits) hb_parni(1) ) );
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
StopBits stopBits() const
*/
HB_FUNC_STATIC( QSERIALPORT_STOPBITS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->stopBits () );
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
bool setFlowControl(FlowControl flow)
*/
HB_FUNC_STATIC( QSERIALPORT_SETFLOWCONTROL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->setFlowControl ( (QSerialPort::FlowControl) hb_parni(1) ) );
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
FlowControl flowControl() const
*/
HB_FUNC_STATIC( QSERIALPORT_FLOWCONTROL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->flowControl () );
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
bool setDataTerminalReady(bool set)
*/
HB_FUNC_STATIC( QSERIALPORT_SETDATATERMINALREADY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      RBOOL( obj->setDataTerminalReady ( PBOOL(1) ) );
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
bool isDataTerminalReady()
*/
HB_FUNC_STATIC( QSERIALPORT_ISDATATERMINALREADY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDataTerminalReady () );
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
bool setRequestToSend(bool set)
*/
HB_FUNC_STATIC( QSERIALPORT_SETREQUESTTOSEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      RBOOL( obj->setRequestToSend ( PBOOL(1) ) );
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
bool isRequestToSend()
*/
HB_FUNC_STATIC( QSERIALPORT_ISREQUESTTOSEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRequestToSend () );
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
PinoutSignals pinoutSignals()
*/
HB_FUNC_STATIC( QSERIALPORT_PINOUTSIGNALS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->pinoutSignals () );
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
bool flush()
*/
HB_FUNC_STATIC( QSERIALPORT_FLUSH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->flush () );
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
bool clear(Directions dir = AllDirections)
*/
HB_FUNC_STATIC( QSERIALPORT_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RBOOL( obj->clear ( ISNIL(1)? (QSerialPort::Directions) QSerialPort::AllDirections : (QSerialPort::Directions) hb_parni(1) ) );
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
bool atEnd() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_ATEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->atEnd () );
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
bool setDataErrorPolicy(DataErrorPolicy policy = IgnorePolicy)
*/
HB_FUNC_STATIC( QSERIALPORT_SETDATAERRORPOLICY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RBOOL( obj->setDataErrorPolicy ( ISNIL(1)? (QSerialPort::DataErrorPolicy) QSerialPort::IgnorePolicy : (QSerialPort::DataErrorPolicy) hb_parni(1) ) );
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
DataErrorPolicy dataErrorPolicy() const
*/
HB_FUNC_STATIC( QSERIALPORT_DATAERRORPOLICY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->dataErrorPolicy () );
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
SerialPortError error() const
*/
HB_FUNC_STATIC( QSERIALPORT_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

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
void clearError()
*/
HB_FUNC_STATIC( QSERIALPORT_CLEARERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearError ();
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
qint64 readBufferSize() const
*/
HB_FUNC_STATIC( QSERIALPORT_READBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->readBufferSize () );
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
void setReadBufferSize(qint64 size)
*/
HB_FUNC_STATIC( QSERIALPORT_SETREADBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setReadBufferSize ( PQINT64(1) );
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
bool isSequential() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_ISSEQUENTIAL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isSequential () );
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
qint64 bytesAvailable() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_BYTESAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->bytesAvailable () );
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
qint64 bytesToWrite() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_BYTESTOWRITE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->bytesToWrite () );
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
bool canReadLine() const Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_CANREADLINE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->canReadLine () );
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
bool waitForReadyRead(int msecs) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_WAITFORREADYREAD )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->waitForReadyRead ( PINT(1) ) );
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
bool waitForBytesWritten(int msecs) Q_DECL_OVERRIDE
*/
HB_FUNC_STATIC( QSERIALPORT_WAITFORBYTESWRITTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->waitForBytesWritten ( PINT(1) ) );
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
bool sendBreak(int duration = 0)
*/
HB_FUNC_STATIC( QSERIALPORT_SENDBREAK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RBOOL( obj->sendBreak ( OPINT(1,0) ) );
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
bool setBreakEnabled(bool set = true)
*/
HB_FUNC_STATIC( QSERIALPORT_SETBREAKENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPort * obj = (QSerialPort *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      RBOOL( obj->setBreakEnabled ( OPBOOL(1,true) ) );
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

void QSerialPortSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QSERIALPORT_ONBAUDRATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortSlots_connect_signal( "baudRateChanged(qint32,QSerialPort::Directions)", "baudRateChanged(qint32,QSerialPort::Directions)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSERIALPORT_ONDATABITSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortSlots_connect_signal( "dataBitsChanged(QSerialPort::DataBits)", "dataBitsChanged(QSerialPort::DataBits)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSERIALPORT_ONPARITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortSlots_connect_signal( "parityChanged(QSerialPort::Parity)", "parityChanged(QSerialPort::Parity)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSERIALPORT_ONSTOPBITSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortSlots_connect_signal( "stopBitsChanged(QSerialPort::StopBits)", "stopBitsChanged(QSerialPort::StopBits)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSERIALPORT_ONFLOWCONTROLCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortSlots_connect_signal( "flowControlChanged(QSerialPort::FlowControl)", "flowControlChanged(QSerialPort::FlowControl)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSERIALPORT_ONDATAERRORPOLICYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortSlots_connect_signal( "dataErrorPolicyChanged(QSerialPort::DataErrorPolicy)", "dataErrorPolicyChanged(QSerialPort::DataErrorPolicy)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSERIALPORT_ONDATATERMINALREADYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortSlots_connect_signal( "dataTerminalReadyChanged(bool)", "dataTerminalReadyChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSERIALPORT_ONREQUESTTOSENDCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortSlots_connect_signal( "requestToSendChanged(bool)", "requestToSendChanged(bool)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSERIALPORT_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortSlots_connect_signal( "error(QSerialPort::SerialPortError)", "error(QSerialPort::SerialPortError)" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QSERIALPORT_ONSETTINGSRESTOREDONCLOSECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSerialPortSlots_connect_signal( "settingsRestoredOnCloseChanged(bool)", "settingsRestoredOnCloseChanged(bool)" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
