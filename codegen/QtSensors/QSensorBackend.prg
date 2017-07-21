$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSENSORREADING
REQUEST QSENSOR
#endif

CLASS QSensorBackend INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD start
   METHOD stop
   METHOD isFeatureSupported
   METHOD addDataRate
   METHOD setDataRates
   METHOD addOutputRange
   METHOD setDescription
   METHOD reading
   METHOD sensor
   METHOD newReadingAvailable
   METHOD sensorStopped
   METHOD sensorBusy
   METHOD sensorError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

/*
virtual void start() = 0
*/
HB_FUNC_STATIC( QSENSORBACKEND_START )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->start ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual void stop() = 0
*/
HB_FUNC_STATIC( QSENSORBACKEND_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual bool isFeatureSupported(QSensor::Feature feature) const
*/
HB_FUNC_STATIC( QSENSORBACKEND_ISFEATURESUPPORTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFeatureSupported ( (QSensor::Feature) hb_parni(1) ) );
  }
#endif
}


/*
void addDataRate(qreal min, qreal max)
*/
HB_FUNC_STATIC( QSENSORBACKEND_ADDDATARATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addDataRate ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setDataRates(const QSensor *otherSensor)
*/
HB_FUNC_STATIC( QSENSORBACKEND_SETDATARATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QSensor * par1 = (const QSensor *) _qt5xhb_itemGetPtr(1);
    obj->setDataRates ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void addOutputRange(qreal min, qreal max, qreal accuracy)
*/
HB_FUNC_STATIC( QSENSORBACKEND_ADDOUTPUTRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->addOutputRange ( PQREAL(1), PQREAL(2), PQREAL(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setDescription(const QString &description)
*/
HB_FUNC_STATIC( QSENSORBACKEND_SETDESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDescription ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QSensorReading *reading() const
*/
HB_FUNC_STATIC( QSENSORBACKEND_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSensorReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QSENSORREADING" );
  }
#endif
}


/*
QSensor *sensor() const
*/
HB_FUNC_STATIC( QSENSORBACKEND_SENSOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSensor * ptr = obj->sensor ();
    _qt5xhb_createReturnClass ( ptr, "QSENSOR" );
  }
#endif
}


/*
void newReadingAvailable()
*/
HB_FUNC_STATIC( QSENSORBACKEND_NEWREADINGAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->newReadingAvailable ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void sensorStopped()
*/
HB_FUNC_STATIC( QSENSORBACKEND_SENSORSTOPPED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->sensorStopped ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void sensorBusy()
*/
HB_FUNC_STATIC( QSENSORBACKEND_SENSORBUSY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->sensorBusy ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void sensorError(int error)
*/
HB_FUNC_STATIC( QSENSORBACKEND_SENSORERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensorBackend * obj = (QSensorBackend *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->sensorError ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
