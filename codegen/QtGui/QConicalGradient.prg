$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QConicalGradient INHERIT QGradient

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD angle
   METHOD center
   METHOD setAngle
   METHOD setCenter

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QConicalGradient ()
*/
void QConicalGradient_new1 ()
{
  QConicalGradient * o = new QConicalGradient ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QConicalGradient ( const QPointF & center, qreal angle )
*/
void QConicalGradient_new2 ()
{
  QConicalGradient * o = new QConicalGradient ( *PQPOINTF(1), PQREAL(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QConicalGradient ( qreal cx, qreal cy, qreal angle )
*/
void QConicalGradient_new3 ()
{
  QConicalGradient * o = new QConicalGradient ( PQREAL(1), PQREAL(2), PQREAL(3) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QConicalGradient ()
//[2]QConicalGradient ( const QPointF & center, qreal angle )
//[3]QConicalGradient ( qreal cx, qreal cy, qreal angle )

HB_FUNC_STATIC( QCONICALGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QConicalGradient_new1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISNUM(2) )
  {
    QConicalGradient_new2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QConicalGradient_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
qreal angle () const
*/
HB_FUNC_STATIC( QCONICALGRADIENT_ANGLE )
{
  QConicalGradient * obj = (QConicalGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->angle () );
  }
}

/*
QPointF center () const
*/
HB_FUNC_STATIC( QCONICALGRADIENT_CENTER )
{
  QConicalGradient * obj = (QConicalGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->center () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void setAngle ( qreal angle )
*/
HB_FUNC_STATIC( QCONICALGRADIENT_SETANGLE )
{
  QConicalGradient * obj = (QConicalGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setAngle ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCenter ( const QPointF & center )
*/
void QConicalGradient_setCenter1 ()
{
  QConicalGradient * obj = (QConicalGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setCenter ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCenter ( qreal x, qreal y )
*/
void QConicalGradient_setCenter2 ()
{
  QConicalGradient * obj = (QConicalGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setCenter ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QCONICALGRADIENT_SETCENTER )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QConicalGradient_setCenter1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QConicalGradient_setCenter2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP