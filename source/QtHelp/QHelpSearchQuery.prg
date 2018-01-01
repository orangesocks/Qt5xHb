/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QHelpSearchQuery

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpSearchQuery
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QHelpSearchQuery>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QHelpSearchQuery>
#endif

/*
QHelpSearchQuery ()
*/
HB_FUNC_STATIC( QHELPSEARCHQUERY_NEW1 )
{
  QHelpSearchQuery * o = new QHelpSearchQuery ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QHelpSearchQuery ( FieldName field, const QStringList & wordList )
*/
HB_FUNC_STATIC( QHELPSEARCHQUERY_NEW2 )
{
  QHelpSearchQuery * o = new QHelpSearchQuery ( (QHelpSearchQuery::FieldName) hb_parni(1), PQSTRINGLIST(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QHelpSearchQuery ()
//[2]QHelpSearchQuery ( FieldName field, const QStringList & wordList )

HB_FUNC_STATIC( QHELPSEARCHQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QHELPSEARCHQUERY_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
  {
    HB_FUNC_EXEC( QHELPSEARCHQUERY_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QHELPSEARCHQUERY_DELETE )
{
  QHelpSearchQuery * obj = (QHelpSearchQuery *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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


HB_FUNC_STATIC( QHELPSEARCHQUERY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QHELPSEARCHQUERY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QHELPSEARCHQUERY_NEWFROM );
}

HB_FUNC_STATIC( QHELPSEARCHQUERY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QHELPSEARCHQUERY_NEWFROM );
}

HB_FUNC_STATIC( QHELPSEARCHQUERY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QHELPSEARCHQUERY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
