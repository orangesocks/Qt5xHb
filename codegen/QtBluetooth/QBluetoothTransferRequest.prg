$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QBLUETOOTHADDRESS
#endif

CLASS QBluetoothTransferRequest

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD attribute
   METHOD setAttribute
   METHOD address

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
QBluetoothTransferRequest(const QBluetoothAddress &address = QBluetoothAddress())
*/
$internalConstructor=5,2,0|new1|const QBluetoothAddress &=QBluetoothAddress()

/*
QBluetoothTransferRequest(const QBluetoothTransferRequest &other)
*/
$internalConstructor=5,2,0|new2|const QBluetoothTransferRequest &

//[1]QBluetoothTransferRequest(const QBluetoothAddress &address = QBluetoothAddress())
//[2]QBluetoothTransferRequest(const QBluetoothTransferRequest &other)

HB_FUNC_STATIC( QBLUETOOTHTRANSFERREQUEST_NEW )
{
  if( ISBETWEEN(0,1) && (ISQBLUETOOTHADDRESS(1)||ISNIL(1)) )
  {
    QBluetoothTransferRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHTRANSFERREQUEST(1) )
  {
    QBluetoothTransferRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

/*
QVariant attribute(Attribute code, const QVariant &defaultValue = QVariant()) const
*/
$method=5,2,0|QVariant|attribute|QBluetoothTransferRequest::Attribute,const QVariant &=QVariant()

/*
void setAttribute(Attribute code, const QVariant &value)
*/
$method=5,2,0|void|setAttribute|QBluetoothTransferRequest::Attribute,const QVariant &

/*
QBluetoothAddress address() const
*/
$method=5,2,0|QBluetoothAddress|address|

$extraMethods

#pragma ENDDUMP