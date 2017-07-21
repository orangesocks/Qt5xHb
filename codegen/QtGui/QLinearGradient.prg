$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QLinearGradient INHERIT QGradient

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD finalStop
   METHOD setFinalStop
   METHOD setStart
   METHOD start

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QLinearGradient ()
*/
void QLinearGradient_new1 ()
{
  QLinearGradient * o = new QLinearGradient ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QLinearGradient ( const QPointF & start, const QPointF & finalStop )
*/
void QLinearGradient_new2 ()
{
  QLinearGradient * o = new QLinearGradient ( *PQPOINTF(1), *PQPOINTF(2) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QLinearGradient ( qreal x1, qreal y1, qreal x2, qreal y2 )
*/
void QLinearGradient_new3 ()
{
  QLinearGradient * o = new QLinearGradient ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QLinearGradient ()
//[2]QLinearGradient ( const QPointF & start, const QPointF & finalStop )
//[3]QLinearGradient ( qreal x1, qreal y1, qreal x2, qreal y2 )

HB_FUNC_STATIC( QLINEARGRADIENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QLinearGradient_new1();
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    QLinearGradient_new2();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QLinearGradient_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QPointF finalStop () const
*/
HB_FUNC_STATIC( QLINEARGRADIENT_FINALSTOP )
{
  QLinearGradient * obj = (QLinearGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->finalStop () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
void setFinalStop ( const QPointF & stop )
*/
void QLinearGradient_setFinalStop1 ()
{
  QLinearGradient * obj = (QLinearGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFinalStop ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFinalStop ( qreal x, qreal y )
*/
void QLinearGradient_setFinalStop2 ()
{
  QLinearGradient * obj = (QLinearGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFinalStop ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setFinalStop ( const QPointF & stop )
//[2]void setFinalStop ( qreal x, qreal y )

HB_FUNC_STATIC( QLINEARGRADIENT_SETFINALSTOP )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QLinearGradient_setFinalStop1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QLinearGradient_setFinalStop2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setStart ( const QPointF & start )
*/
void QLinearGradient_setStart1 ()
{
  QLinearGradient * obj = (QLinearGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setStart ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStart ( qreal x, qreal y )
*/
void QLinearGradient_setStart2 ()
{
  QLinearGradient * obj = (QLinearGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setStart ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setStart ( const QPointF & start )
//[2]void setStart ( qreal x, qreal y )

HB_FUNC_STATIC( QLINEARGRADIENT_SETSTART )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QLinearGradient_setStart1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QLinearGradient_setStart2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF start () const
*/
HB_FUNC_STATIC( QLINEARGRADIENT_START )
{
  QLinearGradient * obj = (QLinearGradient *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->start () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

#pragma ENDDUMP