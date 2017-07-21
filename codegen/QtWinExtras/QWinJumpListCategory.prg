$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINJUMPLISTITEM
#endif

CLASS QWinJumpListCategory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD isVisible
   METHOD setVisible
   METHOD title
   METHOD setTitle
   METHOD count
   METHOD isEmpty
   METHOD items
   METHOD addItem
   METHOD addDestination
   METHOD addLink1
   METHOD addLink2
   METHOD addLink
   METHOD addSeparator
   METHOD clear

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
explicit QWinJumpListCategory(const QString &title = QString())
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * o = new QWinJumpListCategory ( OPQSTRING(1,QString()) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,2,0

/*
Type type() const
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}


/*
bool isVisible() const
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ISVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isVisible () );
  }
#endif
}


/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_SETVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString title() const
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_TITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->title () );
  }
#endif
}


/*
void setTitle(const QString &title)
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_SETTITLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTitle ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int count() const
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->count () );
  }
#endif
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
#endif
}


/*
QList<QWinJumpListItem *> items() const
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ITEMS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWinJumpListItem *> list = obj->items ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWINJUMPLISTITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QWINJUMPLISTITEM" );
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
        hb_itemPutPtr( pItem, (QWinJumpListItem *) list[i] );
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
void addItem(QWinJumpListItem *item)
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ADDITEM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinJumpListItem * par1 = (QWinJumpListItem *) _qt5xhb_itemGetPtr(1);
    obj->addItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QWinJumpListItem *addDestination(const QString &filePath)
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ADDDESTINATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinJumpListItem * ptr = obj->addDestination ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTITEM" );
  }
#endif
}


/*
QWinJumpListItem *addLink(const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ADDLINK1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinJumpListItem * ptr = obj->addLink ( PQSTRING(1), PQSTRING(2), OPQSTRINGLIST(3,QStringList()) );
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTITEM" );
  }
#endif
}

/*
QWinJumpListItem *addLink(const QIcon &icon, const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ADDLINK2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QWinJumpListItem * ptr = obj->addLink ( par1, PQSTRING(2), PQSTRING(3), OPQSTRINGLIST(4,QStringList()) );
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTITEM" );
  }
#endif
}


//[1]QWinJumpListItem *addLink(const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())
//[2]QWinJumpListItem *addLink(const QIcon &icon, const QString &title, const QString &executablePath, const QStringList &arguments = QStringList())

HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ADDLINK )
{
  if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTARRAY(3) )
  {
    HB_FUNC_EXEC( QWINJUMPLISTCATEGORY_ADDLINK1 );
  }
  else if( ISBETWEEN(3,4) && ISQICON(1) && ISCHAR(2) && ISCHAR(3) && ISOPTARRAY(4) )
  {
    HB_FUNC_EXEC( QWINJUMPLISTCATEGORY_ADDLINK2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWinJumpListItem *addSeparator()
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_ADDSEPARATOR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinJumpListItem * ptr = obj->addSeparator ();
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTITEM" );
  }
#endif
}


/*
void clear()
*/
HB_FUNC_STATIC( QWINJUMPLISTCATEGORY_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpListCategory * obj = (QWinJumpListCategory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



$extraMethods

#pragma ENDDUMP