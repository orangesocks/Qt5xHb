$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMEDIAOBJECT
#endif

CLASS QRadioData INHERIT QObject,QMediaBindableInterface

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD availability
   METHOD mediaObject
   METHOD stationId
   METHOD programType
   METHOD programTypeName
   METHOD stationName
   METHOD radioText
   METHOD isAlternativeFrequenciesEnabled
   METHOD error
   METHOD errorString
   METHOD setAlternativeFrequenciesEnabled

   METHOD onStationIdChanged
   METHOD onProgramTypeChanged
   METHOD onProgramTypeNameChanged
   METHOD onStationNameChanged
   METHOD onRadioTextChanged
   METHOD onAlternativeFrequenciesEnabledChanged
   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QRadioData(QMediaObject *mediaObject, QObject *parent = 0)
*/
HB_FUNC_STATIC( QRADIODATA_NEW )
{
  QMediaObject * par1 = (QMediaObject *) _qt5xhb_itemGetPtr(1);
  QRadioData * o = new QRadioData ( par1, OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
QMultimedia::AvailabilityStatus availability() const
*/
HB_FUNC_STATIC( QRADIODATA_AVAILABILITY )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->availability () );
  }
}


/*
QMediaObject *mediaObject() const
*/
HB_FUNC_STATIC( QRADIODATA_MEDIAOBJECT )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMediaObject * ptr = obj->mediaObject ();
    _qt5xhb_createReturnClass ( ptr, "QMEDIAOBJECT" );
  }
}


/*
QString stationId() const
*/
HB_FUNC_STATIC( QRADIODATA_STATIONID )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->stationId () );
  }
}


/*
ProgramType programType() const
*/
HB_FUNC_STATIC( QRADIODATA_PROGRAMTYPE )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->programType () );
  }
}


/*
QString programTypeName() const
*/
HB_FUNC_STATIC( QRADIODATA_PROGRAMTYPENAME )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->programTypeName () );
  }
}


/*
QString stationName() const
*/
HB_FUNC_STATIC( QRADIODATA_STATIONNAME )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->stationName () );
  }
}


/*
QString radioText() const
*/
HB_FUNC_STATIC( QRADIODATA_RADIOTEXT )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->radioText () );
  }
}


/*
bool isAlternativeFrequenciesEnabled() const
*/
HB_FUNC_STATIC( QRADIODATA_ISALTERNATIVEFREQUENCIESENABLED )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isAlternativeFrequenciesEnabled () );
  }
}


/*
Error error() const
*/
HB_FUNC_STATIC( QRADIODATA_ERROR )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->error () );
  }
}


/*
QString errorString() const
*/
HB_FUNC_STATIC( QRADIODATA_ERRORSTRING )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
void setAlternativeFrequenciesEnabled(bool enabled)
*/
HB_FUNC_STATIC( QRADIODATA_SETALTERNATIVEFREQUENCIESENABLED )
{
  QRadioData * obj = (QRadioData *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlternativeFrequenciesEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
