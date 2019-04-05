%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSerialPort

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,1,0

#include <QtCore/QString>

$prototype=QSerialPortInfo()
$internalConstructor=5,1,0|new1|

$prototype=QSerialPortInfo(const QSerialPort &port)
$internalConstructor=5,1,0|new2|const QSerialPort &

$prototype=QSerialPortInfo(const QString &name)
$internalConstructor=5,1,0|new3|const QString &

$prototype=QSerialPortInfo(const QSerialPortInfo &other)
$internalConstructor=5,1,0|new4|const QSerialPortInfo &

//[1]QSerialPortInfo()
//[2]QSerialPortInfo(const QSerialPort &port)
//[3]QSerialPortInfo(const QString &name)
//[4]QSerialPortInfo(const QSerialPortInfo &other)

HB_FUNC_STATIC( QSERIALPORTINFO_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(0) )
  {
    QSerialPortInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQSERIALPORT(1) )
  {
    QSerialPortInfo_new2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QSerialPortInfo_new3();
  }
  else if( ISNUMPAR(1) && ISQSERIALPORTINFO(1) )
  {
    QSerialPortInfo_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod=5,1,0

$prototype=void swap(QSerialPortInfo &other)
$method=5,1,0|void|swap|QSerialPortInfo &

$prototype=QString portName() const
$method=5,1,0|QString|portName|

$prototype=QString systemLocation() const
$method=5,1,0|QString|systemLocation|

$prototype=QString description() const
$method=5,1,0|QString|description|

$prototype=QString manufacturer() const
$method=5,1,0|QString|manufacturer|

$prototype=quint16 vendorIdentifier() const
$method=5,1,0|quint16|vendorIdentifier|

$prototype=quint16 productIdentifier() const
$method=5,1,0|quint16|productIdentifier|

$prototype=bool hasVendorIdentifier() const
$method=5,1,0|bool|hasVendorIdentifier|

$prototype=bool hasProductIdentifier() const
$method=5,1,0|bool|hasProductIdentifier|

$prototype=bool isNull() const
$method=5,1,0|bool|isNull|

$prototype=bool isBusy() const
$method=5,1,0|bool|isBusy|

$prototype=bool isValid() const
$method=5,1,0|bool|isValid|

$prototype=static QList<qint32> standardBaudRates()
$staticMethod=5,1,0|QList<qint32>|standardBaudRates|

$prototype=static QList<QSerialPortInfo> availablePorts()
$staticMethod=5,1,0|QList<QSerialPortInfo>|availablePorts|

$extraMethods

#pragma ENDDUMP
