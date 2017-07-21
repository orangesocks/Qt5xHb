$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACEDETAILSREPLY
REQUEST QPLACECONTENTREPLY
REQUEST QPLACESEARCHREPLY
REQUEST QPLACESEARCHSUGGESTIONREPLY
REQUEST QPLACEIDREPLY
REQUEST QPLACEREPLY
REQUEST QPLACECATEGORY
REQUEST QLOCALE
REQUEST QPLACE
REQUEST QPLACEMATCHREPLY
#endif

CLASS QPlaceManager INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD getPlaceDetails
   METHOD getPlaceContent
   METHOD search
   METHOD searchSuggestions
   METHOD savePlace
   METHOD removePlace
   METHOD saveCategory
   METHOD removeCategory
   METHOD initializeCategories
   METHOD parentCategoryId
   METHOD childCategoryIds
   METHOD category
   METHOD childCategories
   METHOD locales
   METHOD setLocales
   METHOD setLocale
   METHOD compatiblePlace
   METHOD matchingPlaces

   METHOD onFinished
   METHOD onError
   METHOD onPlaceAdded
   METHOD onPlaceUpdated
   METHOD onPlaceRemoved
   METHOD onCategoryAdded
   METHOD onCategoryUpdated
   METHOD onCategoryRemoved
   METHOD onDataChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

$deleteMethod=5,4,0

/*
QString managerName() const
*/
HB_FUNC_STATIC( QPLACEMANAGER_MANAGERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->managerName () );
  }
#endif
}


/*
int managerVersion() const
*/
HB_FUNC_STATIC( QPLACEMANAGER_MANAGERVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->managerVersion () );
  }
#endif
}


/*
QPlaceDetailsReply *getPlaceDetails(const QString &placeId) const
*/
HB_FUNC_STATIC( QPLACEMANAGER_GETPLACEDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceDetailsReply * ptr = obj->getPlaceDetails ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACEDETAILSREPLY" );
  }
#endif
}


/*
QPlaceContentReply *getPlaceContent(const QPlaceContentRequest &request) const
*/
HB_FUNC_STATIC( QPLACEMANAGER_GETPLACECONTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceContentReply * ptr = obj->getPlaceContent ( *PQPLACECONTENTREQUEST(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACECONTENTREPLY" );
  }
#endif
}


/*
QPlaceSearchReply *search(const QPlaceSearchRequest &query) const
*/
HB_FUNC_STATIC( QPLACEMANAGER_SEARCH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSearchReply * ptr = obj->search ( *PQPLACESEARCHREQUEST(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACESEARCHREPLY" );
  }
#endif
}


/*
QPlaceSearchSuggestionReply *searchSuggestions(const QPlaceSearchRequest &request) const
*/
HB_FUNC_STATIC( QPLACEMANAGER_SEARCHSUGGESTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSearchSuggestionReply * ptr = obj->searchSuggestions ( *PQPLACESEARCHREQUEST(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACESEARCHSUGGESTIONREPLY" );
  }
#endif
}


/*
QPlaceIdReply *savePlace(const QPlace &place)
*/
HB_FUNC_STATIC( QPLACEMANAGER_SAVEPLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIdReply * ptr = obj->savePlace ( *PQPLACE(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACEIDREPLY" );
  }
#endif
}


/*
QPlaceIdReply *removePlace(const QString &placeId)
*/
HB_FUNC_STATIC( QPLACEMANAGER_REMOVEPLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIdReply * ptr = obj->removePlace ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACEIDREPLY" );
  }
#endif
}


/*
QPlaceIdReply *saveCategory(const QPlaceCategory &category, const QString &parentId = QString())
*/
HB_FUNC_STATIC( QPLACEMANAGER_SAVECATEGORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIdReply * ptr = obj->saveCategory ( *PQPLACECATEGORY(1), OPQSTRING(2,QString()) );
    _qt5xhb_createReturnClass ( ptr, "QPLACEIDREPLY" );
  }
#endif
}


/*
QPlaceIdReply *removeCategory(const QString &categoryId)
*/
HB_FUNC_STATIC( QPLACEMANAGER_REMOVECATEGORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIdReply * ptr = obj->removeCategory ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACEIDREPLY" );
  }
#endif
}


/*
QPlaceReply *initializeCategories()
*/
HB_FUNC_STATIC( QPLACEMANAGER_INITIALIZECATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceReply * ptr = obj->initializeCategories ();
    _qt5xhb_createReturnClass ( ptr, "QPLACEREPLY" );
  }
#endif
}


/*
QString parentCategoryId(const QString &categoryId) const
*/
HB_FUNC_STATIC( QPLACEMANAGER_PARENTCATEGORYID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->parentCategoryId ( PQSTRING(1) ) );
  }
#endif
}


/*
QStringList childCategoryIds(const QString &parentId = QString()) const
*/
HB_FUNC_STATIC( QPLACEMANAGER_CHILDCATEGORYIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->childCategoryIds ( OPQSTRING(1,QString()) ) );
  }
#endif
}


/*
QPlaceCategory category(const QString &categoryId) const
*/
HB_FUNC_STATIC( QPLACEMANAGER_CATEGORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceCategory * ptr = new QPlaceCategory( obj->category ( PQSTRING(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPLACECATEGORY", true );
  }
#endif
}


/*
QList<QPlaceCategory> childCategories(const QString &parentId = QString()) const
*/
HB_FUNC_STATIC( QPLACEMANAGER_CHILDCATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QPlaceCategory> list = obj->childCategories ( OPQSTRING(1,QString()) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QPLACECATEGORY" );
    #else
    pDynSym = hb_dynsymFindName( "QPLACECATEGORY" );
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
        hb_itemPutPtr( pItem, (QPlaceCategory *) new QPlaceCategory ( list[i] ) );
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
  }
#endif
}


/*
QList<QLocale> locales() const
*/
HB_FUNC_STATIC( QPLACEMANAGER_LOCALES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QLocale> list = obj->locales ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QLOCALE" );
    #else
    pDynSym = hb_dynsymFindName( "QLOCALE" );
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
        hb_itemPutPtr( pItem, (QLocale *) new QLocale ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}

/*
void setLocales(const QList<QLocale> &locale)
*/
HB_FUNC_STATIC( QPLACEMANAGER_SETLOCALES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QLocale> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setLocales ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void setLocale(const QLocale &locale)
*/
HB_FUNC_STATIC( QPLACEMANAGER_SETLOCALE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLocale ( *PQLOCALE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QPlace compatiblePlace(const QPlace &place)
*/
HB_FUNC_STATIC( QPLACEMANAGER_COMPATIBLEPLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlace * ptr = new QPlace( obj->compatiblePlace ( *PQPLACE(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPLACE", true );
  }
#endif
}


/*
QPlaceMatchReply *matchingPlaces(const QPlaceMatchRequest &request) const
*/
HB_FUNC_STATIC( QPLACEMANAGER_MATCHINGPLACES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManager * obj = (QPlaceManager *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceMatchReply * ptr = obj->matchingPlaces ( *PQPLACEMATCHREQUEST(1) );
    _qt5xhb_createReturnClass ( ptr, "QPLACEMATCHREPLY" );
  }
#endif
}




#pragma ENDDUMP