$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QAUDIOENCODERSETTINGS
REQUEST QVARIANT
REQUEST QSIZE
REQUEST QVIDEOENCODERSETTINGS
REQUEST QMEDIAOBJECT
#endif

CLASS QMediaRecorder INHERIT QObject,QMediaBindableInterface

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD actualLocation
   METHOD audioCodecDescription
   METHOD audioSettings
   METHOD availability
   METHOD availableMetaData
   METHOD containerDescription
   METHOD containerFormat
   METHOD duration
   METHOD error
   METHOD errorString
   METHOD isAvailable
   METHOD isMetaDataAvailable
   METHOD isMetaDataWritable
   METHOD isMuted
   METHOD metaData
   METHOD outputLocation
   METHOD setAudioSettings
   METHOD setContainerFormat
   METHOD setEncodingSettings
   METHOD setMetaData
   METHOD setOutputLocation
   METHOD setVideoSettings
   METHOD state
   METHOD status
   METHOD supportedAudioCodecs
   METHOD supportedAudioSampleRates
   METHOD supportedContainers
   METHOD supportedFrameRates
   METHOD supportedResolutions
   METHOD supportedVideoCodecs
   METHOD videoCodecDescription
   METHOD videoSettings
   METHOD volume
   METHOD mediaObject
   METHOD pause
   METHOD record
   METHOD setMuted
   METHOD setVolume
   METHOD stop

   METHOD onActualLocationChanged
   METHOD onAvailabilityChanged1
   METHOD onAvailabilityChanged2
   METHOD onDurationChanged
   METHOD onError
   METHOD onMetaDataAvailableChanged
   METHOD onMetaDataChanged1
   METHOD onMetaDataChanged2
   METHOD onMetaDataWritableChanged
   METHOD onMutedChanged
   METHOD onStateChanged
   METHOD onStatusChanged
   METHOD onVolumeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QUrl>

/*
QMediaRecorder(QMediaObject * mediaObject, QObject * parent = 0)
*/
HB_FUNC_STATIC( QMEDIARECORDER_NEW )
{
  QMediaObject * par1 = (QMediaObject *) _qt5xhb_itemGetPtr(1);
  QMediaRecorder * o = new QMediaRecorder ( par1, OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QUrl actualLocation() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ACTUALLOCATION )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->actualLocation () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
QString audioCodecDescription(const QString & codec) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_AUDIOCODECDESCRIPTION )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->audioCodecDescription ( PQSTRING(1) ) );
  }
}


/*
QAudioEncoderSettings audioSettings() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_AUDIOSETTINGS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioEncoderSettings * ptr = new QAudioEncoderSettings( obj->audioSettings () );
    _qt5xhb_createReturnClass ( ptr, "QAUDIOENCODERSETTINGS" );
  }
}


/*
QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_AVAILABILITY )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->availability () );
  }
}


/*
QStringList availableMetaData() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_AVAILABLEMETADATA )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->availableMetaData () );
  }
}


/*
QString containerDescription(const QString & format) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_CONTAINERDESCRIPTION )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->containerDescription ( PQSTRING(1) ) );
  }
}


/*
QString containerFormat() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_CONTAINERFORMAT )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->containerFormat () );
  }
}


/*
qint64 duration() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_DURATION )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQINT64( obj->duration () );
  }
}


/*
Error error() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ERROR )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ERRORSTRING )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
bool isAvailable() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ISAVAILABLE )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isAvailable () );
  }
}


/*
bool isMetaDataAvailable() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ISMETADATAAVAILABLE )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isMetaDataAvailable () );
  }
}


/*
bool isMetaDataWritable() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ISMETADATAWRITABLE )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isMetaDataWritable () );
  }
}


/*
bool isMuted() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_ISMUTED )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isMuted () );
  }
}


/*
QVariant metaData(const QString & key) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_METADATA )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->metaData ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QUrl outputLocation() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_OUTPUTLOCATION )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->outputLocation () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
void setAudioSettings(const QAudioEncoderSettings & settings)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETAUDIOSETTINGS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAudioSettings ( *PQAUDIOENCODERSETTINGS(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContainerFormat(const QString & container)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETCONTAINERFORMAT )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContainerFormat ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodingSettings(const QAudioEncoderSettings & audio, const QVideoEncoderSettings & video = QVideoEncoderSettings(), const QString & container = QString())
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETENCODINGSETTINGS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoEncoderSettings par2 = ISNIL(2)? QVideoEncoderSettings() : *(QVideoEncoderSettings *) _qt5xhb_itemGetPtr(2);
    obj->setEncodingSettings ( *PQAUDIOENCODERSETTINGS(1), par2, OPQSTRING(3,QString()) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMetaData(const QString & key, const QVariant & value)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETMETADATA )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMetaData ( PQSTRING(1), *PQVARIANT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setOutputLocation(const QUrl & location)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETOUTPUTLOCATION )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setOutputLocation ( *PQURL(1) ) );
  }
}


/*
void setVideoSettings(const QVideoEncoderSettings & settings)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETVIDEOSETTINGS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVideoSettings ( *PQVIDEOENCODERSETTINGS(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
State state() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_STATE )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->state () );
  }
}


/*
Status status() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_STATUS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status () );
  }
}


/*
QStringList supportedAudioCodecs() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDAUDIOCODECS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->supportedAudioCodecs () );
  }
}


/*
QList<int> supportedAudioSampleRates(const QAudioEncoderSettings & settings = QAudioEncoderSettings(), bool * continuous = 0) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDAUDIOSAMPLERATES )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAudioEncoderSettings par1 = ISNIL(1)? QAudioEncoderSettings() : *(QAudioEncoderSettings *) _qt5xhb_itemGetPtr(1);
    bool par2;
    QList<int> list = obj->supportedAudioSampleRates ( par1, &par2 );
    _qt5xhb_convert_qlist_int_to_array ( list );
    hb_storl( par2, 2 );
  }
}


/*
QStringList supportedContainers() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDCONTAINERS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->supportedContainers () );
  }
}


/*
QList<qreal> supportedFrameRates(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = 0) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDFRAMERATES )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoEncoderSettings par1 = ISNIL(1)? QVideoEncoderSettings() : *(QVideoEncoderSettings *) _qt5xhb_itemGetPtr(1);
    bool par2;
    QList<qreal> list = obj->supportedFrameRates ( par1, &par2 );
    _qt5xhb_convert_qlist_qreal_to_array ( list );
    hb_storl( par2, 2 );
  }
}


/*
QList<QSize> supportedResolutions(const QVideoEncoderSettings & settings = QVideoEncoderSettings(), bool * continuous = 0) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDRESOLUTIONS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoEncoderSettings par1 = ISNIL(1)? QVideoEncoderSettings() : *(QVideoEncoderSettings *) _qt5xhb_itemGetPtr(1);
    bool par2;
    QList<QSize> list = obj->supportedResolutions ( par1, &par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSIZE" );
    #else
    pDynSym = hb_dynsymFindName( "QSIZE" );
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
        hb_itemPutPtr( pItem, (QSize *) new QSize ( list[i] ) );
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
    hb_itemReturnRelease(pArray);
    hb_storl( par2, 2 );
  }
}


/*
QStringList supportedVideoCodecs() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_SUPPORTEDVIDEOCODECS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->supportedVideoCodecs () );
  }
}


/*
QString videoCodecDescription(const QString & codec) const
*/
HB_FUNC_STATIC( QMEDIARECORDER_VIDEOCODECDESCRIPTION )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->videoCodecDescription ( PQSTRING(1) ) );
  }
}


/*
QVideoEncoderSettings videoSettings() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_VIDEOSETTINGS )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVideoEncoderSettings * ptr = new QVideoEncoderSettings( obj->videoSettings () );
    _qt5xhb_createReturnClass ( ptr, "QVIDEOENCODERSETTINGS" );
  }
}


/*
qreal volume() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_VOLUME )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->volume () );
  }
}


/*
virtual QMediaObject * mediaObject() const
*/
HB_FUNC_STATIC( QMEDIARECORDER_MEDIAOBJECT )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaObject * ptr = obj->mediaObject ();
    _qt5xhb_createReturnClass ( ptr, "QMEDIAOBJECT" );
  }
}


/*
void pause()
*/
HB_FUNC_STATIC( QMEDIARECORDER_PAUSE )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->pause ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void record()
*/
HB_FUNC_STATIC( QMEDIARECORDER_RECORD )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->record ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMuted(bool muted)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETMUTED )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMuted ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVolume(qreal volume)
*/
HB_FUNC_STATIC( QMEDIARECORDER_SETVOLUME )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVolume ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void stop()
*/
HB_FUNC_STATIC( QMEDIARECORDER_STOP )
{
  QMediaRecorder * obj = (QMediaRecorder *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
