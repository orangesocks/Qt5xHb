/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDeclarativePropertyMap INHERIT QObject

   DATA class_id INIT Class_Id_QDeclarativePropertyMap
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD clear
   METHOD contains
   METHOD count
   METHOD insert
   METHOD isEmpty
   METHOD keys
   METHOD size
   METHOD value
   METHOD onValueChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativePropertyMap
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDeclarativePropertyMap>
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDeclarativePropertyMap>
#endif

/*
QDeclarativePropertyMap ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QDeclarativePropertyMap * o = new QDeclarativePropertyMap ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativePropertyMap *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_DELETE )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
}

/*
void clear ( const QString & key )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_CLEAR )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->clear ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool contains ( const QString & key ) const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_CONTAINS )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->contains ( par1 ) );
  }
}


/*
int count () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_COUNT )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
void insert ( const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_INSERT )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->insert ( par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_ISEMPTY )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
QStringList keys () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_KEYS )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->keys (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
int size () const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_SIZE )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}


/*
QVariant value ( const QString & key ) const
*/
HB_FUNC_STATIC( QDECLARATIVEPROPERTYMAP_VALUE )
{
  QDeclarativePropertyMap * obj = (QDeclarativePropertyMap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * ptr = new QVariant( obj->value ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}




#pragma ENDDUMP
