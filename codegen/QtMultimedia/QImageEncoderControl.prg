$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QIMAGEENCODERSETTINGS
#endif

CLASS QImageEncoderControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD supportedImageCodecs
   METHOD imageCodecDescription
   METHOD supportedResolutions
   METHOD imageSettings
   METHOD setImageSettings

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual QStringList supportedImageCodecs() const = 0
*/
HB_FUNC_STATIC( QIMAGEENCODERCONTROL_SUPPORTEDIMAGECODECS )
{
  QImageEncoderControl * obj = (QImageEncoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->supportedImageCodecs () );
  }
}


/*
virtual QString imageCodecDescription(const QString &codecName) const = 0
*/
HB_FUNC_STATIC( QIMAGEENCODERCONTROL_IMAGECODECDESCRIPTION )
{
  QImageEncoderControl * obj = (QImageEncoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->imageCodecDescription ( PQSTRING(1) ) );
  }
}


/*
virtual QList<QSize> supportedResolutions(const QImageEncoderSettings &settings,bool *continuous = 0) const = 0
*/
HB_FUNC_STATIC( QIMAGEENCODERCONTROL_SUPPORTEDRESOLUTIONS )
{
  QImageEncoderControl * obj = (QImageEncoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    bool par2;
    QList<QSize> list = obj->supportedResolutions ( *PQIMAGEENCODERSETTINGS(1), &par2 );
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
virtual QImageEncoderSettings imageSettings() const = 0
*/
HB_FUNC_STATIC( QIMAGEENCODERCONTROL_IMAGESETTINGS )
{
  QImageEncoderControl * obj = (QImageEncoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImageEncoderSettings * ptr = new QImageEncoderSettings( obj->imageSettings () );
    _qt5xhb_createReturnClass ( ptr, "QIMAGEENCODERSETTINGS" );
  }
}


/*
virtual void setImageSettings(const QImageEncoderSettings &settings) = 0
*/
HB_FUNC_STATIC( QIMAGEENCODERCONTROL_SETIMAGESETTINGS )
{
  QImageEncoderControl * obj = (QImageEncoderControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setImageSettings ( *PQIMAGEENCODERSETTINGS(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
