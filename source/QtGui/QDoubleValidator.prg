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

CLASS QDoubleValidator INHERIT QValidator

   METHOD new
   METHOD delete
   METHOD bottom
   METHOD decimals
   METHOD notation
   METHOD setBottom
   METHOD setDecimals
   METHOD setNotation
   METHOD setRange
   METHOD setTop
   METHOD top
   METHOD validate

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDoubleValidator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QDoubleValidator>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QDoubleValidator>
#endif

/*
QDoubleValidator ( QObject * parent = 0 )
*/
void QDoubleValidator_new1 ()
{
  QDoubleValidator * o = new QDoubleValidator ( OPQOBJECT(1,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QDoubleValidator ( double bottom, double top, int decimals, QObject * parent )
*/
void QDoubleValidator_new2 ()
{
  QDoubleValidator * o = new QDoubleValidator ( PDOUBLE(1), PDOUBLE(2), PINT(3), PQOBJECT(4) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QDoubleValidator ( QObject * parent = 0 )
//[2]QDoubleValidator ( double bottom, double top, int decimals, QObject * parent = 0 )

HB_FUNC_STATIC( QDOUBLEVALIDATOR_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QDoubleValidator_new1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISOPTQOBJECT(4) )
  {
    QDoubleValidator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOUBLEVALIDATOR_DELETE )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();

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
double bottom () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_BOTTOM )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->bottom () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int decimals () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_DECIMALS )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->decimals () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Notation notation () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_NOTATION )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->notation () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setBottom ( double )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETBOTTOM )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setBottom ( PDOUBLE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDecimals ( int )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETDECIMALS )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setDecimals ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNotation ( Notation )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETNOTATION )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setNotation ( (QDoubleValidator::Notation) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setRange ( double minimum, double maximum, int decimals = 0 )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETRANGE )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTNUM(3) )
    {
#endif
      obj->setRange ( PDOUBLE(1), PDOUBLE(2), OPINT(3,0) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setTop ( double )
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_SETTOP )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setTop ( PDOUBLE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
double top () const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_TOP )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RDOUBLE( obj->top () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QValidator::State validate ( QString & input, int & pos ) const
*/
HB_FUNC_STATIC( QDOUBLEVALIDATOR_VALIDATE )
{
  QDoubleValidator * obj = (QDoubleValidator *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
    {
#endif
      QString par1 = hb_parc(1);
int par2;
      RENUM( obj->validate ( par1, par2 ) );
      hb_storc( QSTRINGTOSTRING(par1), 1);
hb_storni( par2, 2 );
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
