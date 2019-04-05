/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINJUMPLISTCATEGORY
#endif

CLASS QWinJumpList INHERIT QObject

   METHOD new
   METHOD delete
   METHOD identifier
   METHOD setIdentifier
   METHOD recent
   METHOD frequent
   METHOD tasks
   METHOD categories
   METHOD addCategory1
   METHOD addCategory2
   METHOD addCategory
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWinJumpList
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinJumpList>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinJumpList>
#endif
#endif

/*
explicit QWinJumpList(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWINJUMPLIST_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * o = new QWinJumpList ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
#endif
}


HB_FUNC_STATIC( QWINJUMPLIST_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString identifier() const
*/
HB_FUNC_STATIC( QWINJUMPLIST_IDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->identifier () );
  }
#endif
}

/*
void setIdentifier(const QString &identifier)
*/
HB_FUNC_STATIC( QWINJUMPLIST_SETIDENTIFIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIdentifier ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QWinJumpListCategory *recent() const
*/
HB_FUNC_STATIC( QWINJUMPLIST_RECENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinJumpListCategory * ptr = obj->recent ();
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTCATEGORY" );
  }
#endif
}


/*
QWinJumpListCategory *frequent() const
*/
HB_FUNC_STATIC( QWINJUMPLIST_FREQUENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinJumpListCategory * ptr = obj->frequent ();
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTCATEGORY" );
  }
#endif
}


/*
QWinJumpListCategory *tasks() const
*/
HB_FUNC_STATIC( QWINJUMPLIST_TASKS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinJumpListCategory * ptr = obj->tasks ();
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTCATEGORY" );
  }
#endif
}


/*
QList<QWinJumpListCategory *> categories() const
*/
HB_FUNC_STATIC( QWINJUMPLIST_CATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWinJumpListCategory *> list = obj->categories ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QWINJUMPLISTCATEGORY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QWinJumpListCategory *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QWINJUMPLISTCATEGORY", HB_ERR_ARGS_BASEPARAMS );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}


/*
void addCategory(QWinJumpListCategory *category)
*/
HB_FUNC_STATIC( QWINJUMPLIST_ADDCATEGORY1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWinJumpListCategory * par1 = (QWinJumpListCategory *) _qt5xhb_itemGetPtr(1);
    obj->addCategory ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QWinJumpListCategory *addCategory(const QString &title, const QList<QWinJumpListItem *> items = QList<QWinJumpListItem *>())
*/
HB_FUNC_STATIC( QWINJUMPLIST_ADDCATEGORY2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QWinJumpListItem *> par2;
    PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
    int i2;
    int nLen2 = hb_arrayLen(aList2);
    for (i2=0;i2<nLen2;i2++)
    {
      par2 << (QWinJumpListItem *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
    }
    QWinJumpListCategory * ptr = obj->addCategory ( PQSTRING(1), par2 );
    _qt5xhb_createReturnClass ( ptr, "QWINJUMPLISTCATEGORY" );
  }
#endif
}


//[1]void addCategory(QWinJumpListCategory *category)
//[2]QWinJumpListCategory *addCategory(const QString &title, const QList<QWinJumpListItem *> items = QList<QWinJumpListItem *>())

HB_FUNC_STATIC( QWINJUMPLIST_ADDCATEGORY )
{
  if( ISNUMPAR(1) && ISQWINJUMPLISTCATEGORY(1) )
  {
    HB_FUNC_EXEC( QWINJUMPLIST_ADDCATEGORY1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISOPTARRAY(2) )
  {
    HB_FUNC_EXEC( QWINJUMPLIST_ADDCATEGORY2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

}

/*
void clear()
*/
HB_FUNC_STATIC( QWINJUMPLIST_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinJumpList * obj = (QWinJumpList *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



#pragma ENDDUMP
