$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QRANGELIST
REQUEST QOUTPUTRANGELIST
REQUEST QSENSORFILTER
REQUEST QSENSORREADING
#endif

CLASS QSensor INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD identifier
   METHOD setIdentifier
   METHOD type
   METHOD connectToBackend
   METHOD isConnectedToBackend
   METHOD isBusy
   METHOD setActive
   METHOD isActive
   METHOD isAlwaysOn
   METHOD setAlwaysOn
   METHOD skipDuplicates
   METHOD setSkipDuplicates
   METHOD availableDataRates
   METHOD dataRate
   METHOD setDataRate
   METHOD outputRanges
   METHOD outputRange
   METHOD setOutputRange
   METHOD description
   METHOD error
   METHOD addFilter
   METHOD removeFilter
   METHOD filters
   METHOD reading
   METHOD isFeatureSupported
   METHOD axesOrientationMode
   METHOD setAxesOrientationMode
   METHOD currentOrientation
   METHOD setCurrentOrientation
   METHOD userOrientation
   METHOD setUserOrientation
   METHOD maxBufferSize
   METHOD setMaxBufferSize
   METHOD efficientBufferSize
   METHOD setEfficientBufferSize
   METHOD bufferSize
   METHOD setBufferSize
   METHOD start
   METHOD stop
   METHOD sensorTypes
   METHOD sensorsForType
   METHOD defaultSensorForType

   METHOD onBusyChanged
   METHOD onActiveChanged
   METHOD onReadingChanged
   METHOD onSensorError
   METHOD onAvailableSensorsChanged
   METHOD onAlwaysOnChanged
   METHOD onDataRateChanged
   METHOD onSkipDuplicatesChanged
   METHOD onAxesOrientationModeChanged
   METHOD onCurrentOrientationChanged
   METHOD onUserOrientationChanged
   METHOD onMaxBufferSizeChanged
   METHOD onEfficientBufferSizeChanged
   METHOD onBufferSizeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,1,0

/*
QSensor(const QByteArray &type, QObject *parent = 0)
*/
HB_FUNC_STATIC( QSENSOR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * o = new QSensor ( *PQBYTEARRAY(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,1,0

/*
QByteArray identifier() const
*/
HB_FUNC_STATIC( QSENSOR_IDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->identifier () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
#endif
}


/*
void setIdentifier(const QByteArray &identifier)
*/
HB_FUNC_STATIC( QSENSOR_SETIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIdentifier ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QByteArray type() const
*/
HB_FUNC_STATIC( QSENSOR_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->type () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
#endif
}


/*
bool connectToBackend()
*/
HB_FUNC_STATIC( QSENSOR_CONNECTTOBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->connectToBackend () );
  }
#endif
}


/*
bool isConnectedToBackend() const
*/
HB_FUNC_STATIC( QSENSOR_ISCONNECTEDTOBACKEND )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isConnectedToBackend () );
  }
#endif
}


/*
bool isBusy() const
*/
HB_FUNC_STATIC( QSENSOR_ISBUSY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isBusy () );
  }
#endif
}


/*
void setActive(bool active)
*/
HB_FUNC_STATIC( QSENSOR_SETACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setActive ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isActive() const
*/
HB_FUNC_STATIC( QSENSOR_ISACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isActive () );
  }
#endif
}


/*
bool isAlwaysOn() const
*/
HB_FUNC_STATIC( QSENSOR_ISALWAYSON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isAlwaysOn () );
  }
#endif
}


/*
void setAlwaysOn(bool alwaysOn)
*/
HB_FUNC_STATIC( QSENSOR_SETALWAYSON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlwaysOn ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool skipDuplicates() const
*/
HB_FUNC_STATIC( QSENSOR_SKIPDUPLICATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->skipDuplicates () );
  }
#endif
}


/*
void setSkipDuplicates(bool skipDuplicates)
*/
HB_FUNC_STATIC( QSENSOR_SETSKIPDUPLICATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSkipDuplicates ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qrangelist availableDataRates() const
*/
HB_FUNC_STATIC( QSENSOR_AVAILABLEDATARATES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qrangelist * ptr = new qrangelist( obj->availableDataRates () );
    _qt5xhb_createReturnClass ( ptr, "QRANGELIST" );
  }
#endif
}


/*
int dataRate() const
*/
HB_FUNC_STATIC( QSENSOR_DATARATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->dataRate () );
  }
#endif
}


/*
void setDataRate(int rate)
*/
HB_FUNC_STATIC( QSENSOR_SETDATARATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDataRate ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
qoutputrangelist outputRanges() const
*/
HB_FUNC_STATIC( QSENSOR_OUTPUTRANGES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qoutputrangelist * ptr = new qoutputrangelist( obj->outputRanges () );
    _qt5xhb_createReturnClass ( ptr, "QOUTPUTRANGELIST" );
  }
#endif
}


/*
int outputRange() const
*/
HB_FUNC_STATIC( QSENSOR_OUTPUTRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->outputRange () );
  }
#endif
}


/*
void setOutputRange(int index)
*/
HB_FUNC_STATIC( QSENSOR_SETOUTPUTRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOutputRange ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString description() const
*/
HB_FUNC_STATIC( QSENSOR_DESCRIPTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->description () );
  }
#endif
}


/*
int error() const
*/
HB_FUNC_STATIC( QSENSOR_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->error () );
  }
#endif
}


/*
void addFilter(QSensorFilter *filter)
*/
HB_FUNC_STATIC( QSENSOR_ADDFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSensorFilter * par1 = (QSensorFilter *) _qt5xhb_itemGetPtr(1);
    obj->addFilter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void removeFilter(QSensorFilter *filter)
*/
HB_FUNC_STATIC( QSENSOR_REMOVEFILTER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSensorFilter * par1 = (QSensorFilter *) _qt5xhb_itemGetPtr(1);
    obj->removeFilter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QList<QSensorFilter*> filters() const
*/
HB_FUNC_STATIC( QSENSOR_FILTERS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSensorFilter *> list = obj->filters ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSENSORFILTER" );
    #else
    pDynSym = hb_dynsymFindName( "QSENSORFILTER" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSensorFilter *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
QSensorReading *reading() const
*/
HB_FUNC_STATIC( QSENSOR_READING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSensorReading * ptr = obj->reading ();
    _qt5xhb_createReturnClass ( ptr, "QSENSORREADING" );
  }
#endif
}


/*
bool isFeatureSupported(Feature feature) const
*/
HB_FUNC_STATIC( QSENSOR_ISFEATURESUPPORTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFeatureSupported ( (QSensor::Feature) hb_parni(1) ) );
  }
#endif
}


/*
AxesOrientationMode axesOrientationMode() const
*/
HB_FUNC_STATIC( QSENSOR_AXESORIENTATIONMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->axesOrientationMode () );
  }
#endif
}


/*
void setAxesOrientationMode(AxesOrientationMode axesOrientationMode)
*/
HB_FUNC_STATIC( QSENSOR_SETAXESORIENTATIONMODE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAxesOrientationMode ( (QSensor::AxesOrientationMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int currentOrientation() const
*/
HB_FUNC_STATIC( QSENSOR_CURRENTORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->currentOrientation () );
  }
#endif
}


/*
void setCurrentOrientation(int currentOrientation)
*/
HB_FUNC_STATIC( QSENSOR_SETCURRENTORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCurrentOrientation ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int userOrientation() const
*/
HB_FUNC_STATIC( QSENSOR_USERORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->userOrientation () );
  }
#endif
}


/*
void setUserOrientation(int userOrientation)
*/
HB_FUNC_STATIC( QSENSOR_SETUSERORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUserOrientation ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int maxBufferSize() const
*/
HB_FUNC_STATIC( QSENSOR_MAXBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->maxBufferSize () );
  }
#endif
}


/*
void setMaxBufferSize(int maxBufferSize)
*/
HB_FUNC_STATIC( QSENSOR_SETMAXBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaxBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int efficientBufferSize() const
*/
HB_FUNC_STATIC( QSENSOR_EFFICIENTBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->efficientBufferSize () );
  }
#endif
}


/*
void setEfficientBufferSize(int efficientBufferSize)
*/
HB_FUNC_STATIC( QSENSOR_SETEFFICIENTBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEfficientBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int bufferSize() const
*/
HB_FUNC_STATIC( QSENSOR_BUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->bufferSize () );
  }
#endif
}


/*
void setBufferSize(int bufferSize)
*/
HB_FUNC_STATIC( QSENSOR_SETBUFFERSIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBufferSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool start()
*/
HB_FUNC_STATIC( QSENSOR_START )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->start () );
  }
#endif
}


/*
void stop()
*/
HB_FUNC_STATIC( QSENSOR_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QSensor * obj = (QSensor *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
static QList<QByteArray> sensorTypes()
*/
HB_FUNC_STATIC( QSENSOR_SENSORTYPES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QList<QByteArray> list = QSensor::sensorTypes ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
#endif
}


/*
static QList<QByteArray> sensorsForType(const QByteArray &type)
*/
HB_FUNC_STATIC( QSENSOR_SENSORSFORTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QList<QByteArray> list = QSensor::sensorsForType ( *PQBYTEARRAY(1) );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
#endif
}


/*
static QByteArray defaultSensorForType(const QByteArray &type)
*/
HB_FUNC_STATIC( QSENSOR_DEFAULTSENSORFORTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QByteArray * ptr = new QByteArray( QSensor::defaultSensorForType ( *PQBYTEARRAY(1) ) );
  _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
#endif
}




#pragma ENDDUMP
