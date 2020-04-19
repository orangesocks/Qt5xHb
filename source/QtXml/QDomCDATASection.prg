/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QDomCDATASection INHERIT QDomText

   METHOD new
   METHOD delete
   METHOD nodeType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDomCDATASection
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtXml/QDomCDATASection>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtXml/QDomCDATASection>
#endif

/*
QDomCDATASection ()
*/
void QDomCDATASection_new1()
{
  QDomCDATASection * o = new QDomCDATASection();
  Qt5xHb::returnNewObject( o, true );
}

/*
QDomCDATASection ( const QDomCDATASection & x )
*/
void QDomCDATASection_new2()
{
  QDomCDATASection * o = new QDomCDATASection( *PQDOMCDATASECTION(1) );
  Qt5xHb::returnNewObject( o, true );
}

/*
[1]QDomCDATASection ()
[2]QDomCDATASection ( const QDomCDATASection & x )
*/

HB_FUNC_STATIC( QDOMCDATASECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDomCDATASection_new1();
  }
  else if( ISNUMPAR(1) && ISQDOMCDATASECTION(1) )
  {
    QDomCDATASection_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMCDATASECTION_DELETE )
{
  QDomCDATASection * obj = (QDomCDATASection *) Qt5xHb::itemGetPtrStackSelfItem();

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
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMCDATASECTION_NODETYPE )
{
  QDomCDATASection * obj = (QDomCDATASection *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->nodeType() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
