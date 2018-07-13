%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,2,0

#include <QBluetoothDeviceInfo>

$prototype=QBluetoothServiceInfo()
$internalConstructor=5,2,0|new1|

$prototype=QBluetoothServiceInfo(const QBluetoothServiceInfo &other)
$internalConstructor=5,2,0|new2|const QBluetoothServiceInfo &

//[1]QBluetoothServiceInfo()
//[2]QBluetoothServiceInfo(const QBluetoothServiceInfo &other)

HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBluetoothServiceInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQBLUETOOTHSERVICEINFO(1) )
  {
    QBluetoothServiceInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,2,0

$prototype=bool isValid() const
$method=5,2,0|bool|isValid|

$prototype=bool isComplete() const
$method=5,2,0|bool|isComplete|

$prototype=void setDevice(const QBluetoothDeviceInfo &info)
$method=5,2,0|void|setDevice|const QBluetoothDeviceInfo &

$prototype=QBluetoothDeviceInfo device() const
$method=5,2,0|QBluetoothDeviceInfo|device|

$prototype=void setAttribute(quint16 attributeId, const QVariant &value)
$internalMethod=5,2,0|void|setAttribute,setAttribute1|quint16,const QVariant &

$prototype=void setAttribute(quint16 attributeId, const QBluetoothUuid &value)
$internalMethod=5,2,0|void|setAttribute,setAttribute2|quint16,const QBluetoothUuid &

$prototype=void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Sequence &value)

$prototype=void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Alternative &value)

//[1]void setAttribute(quint16 attributeId, const QVariant &value)
//[2]void setAttribute(quint16 attributeId, const QBluetoothUuid &value)
//[3]void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Sequence &value)    // TODO: implementar
//[4]void setAttribute(quint16 attributeId, const QBluetoothServiceInfo::Alternative &value) // TODO: implementar

HB_FUNC_STATIC( QBLUETOOTHSERVICEINFO_SETATTRIBUTE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
  {
    QBluetoothServiceInfo_setAttribute1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQBLUETOOTHUUID(2) )
  {
    QBluetoothServiceInfo_setAttribute2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QVariant attribute(quint16 attributeId) const
$method=5,2,0|QVariant|attribute|quint16

$prototype=QList<quint16> attributes() const
$method=5,2,0|QList<quint16>|attributes|

$prototype=bool contains(quint16 attributeId) const
$method=5,2,0|bool|contains|quint16

$prototype=void removeAttribute(quint16 attributeId)
$method=5,2,0|void|removeAttribute|quint16

$prototype=void setServiceName(const QString &name)
$method=5,2,0|void|setServiceName|const QString &

$prototype=QString serviceName() const
$method=5,2,0|QString|serviceName|

$prototype=void setServiceDescription(const QString &description)
$method=5,2,0|void|setServiceDescription|const QString &

$prototype=QString serviceDescription() const
$method=5,2,0|QString|serviceDescription|

$prototype=void setServiceProvider(const QString &provider)
$method=5,2,0|void|setServiceProvider|const QString &

$prototype=QString serviceProvider() const
$method=5,2,0|QString|serviceProvider|

$prototype=QBluetoothServiceInfo::Protocol socketProtocol() const
$method=5,2,0|QBluetoothServiceInfo::Protocol|socketProtocol|

$prototype=int protocolServiceMultiplexer() const
$method=5,2,0|int|protocolServiceMultiplexer|

$prototype=int serverChannel() const
$method=5,2,0|int|serverChannel|

$prototype=void setServiceAvailability(quint8 availability)
$method=5,2,0|void|setServiceAvailability|quint8

$prototype=quint8 serviceAvailability() const
$method=5,2,0|quint8|serviceAvailability|

$prototype=void setServiceUuid(const QBluetoothUuid &uuid)
$method=5,2,0|void|setServiceUuid|const QBluetoothUuid &

$prototype=QBluetoothUuid serviceUuid() const
$method=5,2,0|QBluetoothUuid|serviceUuid|

$prototype=QList<QBluetoothUuid> serviceClassUuids() const
$method=5,2,0|QList<QBluetoothUuid>|serviceClassUuids|

$prototype=bool isRegistered() const
$method=5,2,0|bool|isRegistered|

$prototype=bool registerService(const QBluetoothAddress &localAdapter = QBluetoothAddress())
$method=5,2,0|bool|registerService|const QBluetoothAddress &=QBluetoothAddress()

$prototype=bool unregisterService()
$method=5,2,0|bool|unregisterService|

$extraMethods

#pragma ENDDUMP
