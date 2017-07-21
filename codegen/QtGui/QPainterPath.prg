$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPOINTF
REQUEST QPOLYGONF
#endif

CLASS QPainterPath

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addEllipse
   METHOD addPath
   METHOD addPolygon
   METHOD addRect
   METHOD addRegion
   METHOD addRoundedRect
   METHOD addText
   METHOD angleAtPercent
   METHOD arcMoveTo
   METHOD arcTo
   METHOD boundingRect
   METHOD closeSubpath
   METHOD connectPath
   METHOD contains
   METHOD controlPointRect
   METHOD cubicTo
   METHOD currentPosition
   METHOD elementCount
   METHOD fillRule
   METHOD intersected
   METHOD intersects
   METHOD isEmpty
   METHOD length
   METHOD lineTo
   METHOD moveTo
   METHOD percentAtLength
   METHOD pointAtPercent
   METHOD quadTo
   METHOD setElementPositionAt
   METHOD setFillRule
   METHOD simplified
   METHOD slopeAtPercent
   METHOD subtracted
   METHOD swap
   METHOD toFillPolygon1
   METHOD toFillPolygon
   METHOD toReversed
   METHOD translate
   METHOD translated
   METHOD united

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QPainterPath ()
*/
void QPainterPath_new1 ()
{
  QPainterPath * o = new QPainterPath ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPainterPath ( const QPointF & startPoint )
*/
void QPainterPath_new2 ()
{
  QPainterPath * o = new QPainterPath ( *PQPOINTF(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPainterPath ( const QPainterPath & path )
*/
void QPainterPath_new3 ()
{
  QPainterPath * o = new QPainterPath ( *PQPAINTERPATH(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QPainterPath ()
//[2]QPainterPath ( const QPointF & startPoint )
//[3]QPainterPath ( const QPainterPath & path )

HB_FUNC_STATIC( QPAINTERPATH_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPainterPath_new1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_new2();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QPainterPath_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addEllipse ( const QRectF & boundingRectangle )
*/
void QPainterPath_addEllipse1 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addEllipse ( *PQRECTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addEllipse ( qreal x, qreal y, qreal width, qreal height )
*/
void QPainterPath_addEllipse2 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addEllipse ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addEllipse ( const QPointF & center, qreal rx, qreal ry )
*/
void QPainterPath_addEllipse3 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addEllipse ( *PQPOINTF(1), PQREAL(2), PQREAL(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addEllipse ( const QRectF & boundingRectangle )
//[2]void addEllipse ( qreal x, qreal y, qreal width, qreal height )
//[3]void addEllipse ( const QPointF & center, qreal rx, qreal ry )

HB_FUNC_STATIC( QPAINTERPATH_ADDELLIPSE )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPainterPath_addEllipse1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainterPath_addEllipse2();
  }
  else if( ISNUMPAR(3) && ISQPOINTF(1) && ISNUM(2) && ISNUM(3) )
  {
    QPainterPath_addEllipse2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDPATH )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTERPATH(1) )
    {
      obj->addPath ( *PQPAINTERPATH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addPolygon ( const QPolygonF & polygon )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDPOLYGON )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOLYGONF(1) )
    {
      obj->addPolygon ( *PQPOLYGONF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRect ( const QRectF & rectangle )
*/
void QPainterPath_addRect1 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addRect ( *PQRECTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRect ( qreal x, qreal y, qreal width, qreal height )
*/
void QPainterPath_addRect2 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addRect ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addRect ( const QRectF & rectangle )
//[2]void addRect ( qreal x, qreal y, qreal width, qreal height )

HB_FUNC_STATIC( QPAINTERPATH_ADDRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPainterPath_addRect1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainterPath_addRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addRegion ( const QRegion & region )
*/
HB_FUNC_STATIC( QPAINTERPATH_ADDREGION )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQREGION(1) )
    {
      obj->addRegion ( *PQREGION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
void QPainterPath_addRoundedRect1 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par4 = ISNIL(4)? (int) Qt::AbsoluteSize : hb_parni(4);
    obj->addRoundedRect ( *PQRECTF(1), PQREAL(2), PQREAL(3), (Qt::SizeMode) par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRoundedRect ( qreal x, qreal y, qreal w, qreal h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
*/
void QPainterPath_addRoundedRect2 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par7 = ISNIL(7)? (int) Qt::AbsoluteSize : hb_parni(7);
    obj->addRoundedRect ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6), (Qt::SizeMode) par7 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addRoundedRect ( const QRectF & rect, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )
//[2]void addRoundedRect ( qreal x, qreal y, qreal w, qreal h, qreal xRadius, qreal yRadius, Qt::SizeMode mode = Qt::AbsoluteSize )

HB_FUNC_STATIC( QPAINTERPATH_ADDROUNDEDRECT )
{
  if( ISBETWEEN(3,4) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) && ISOPTNUM(4) )
  {
    QPainterPath_addRoundedRect1();
  }
  else if( ISBETWEEN(6,7) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISOPTNUM(7) )
  {
    QPainterPath_addRoundedRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addText ( const QPointF & point, const QFont & font, const QString & text )
*/
void QPainterPath_addText1 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addText ( *PQPOINTF(1), *PQFONT(2), PQSTRING(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addText ( qreal x, qreal y, const QFont & font, const QString & text )
*/
void QPainterPath_addText2 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addText ( PQREAL(1), PQREAL(2), *PQFONT(3), PQSTRING(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addText ( const QPointF & point, const QFont & font, const QString & text )
//[2]void addText ( qreal x, qreal y, const QFont & font, const QString & text )

HB_FUNC_STATIC( QPAINTERPATH_ADDTEXT )
{
  if( ISNUMPAR(3) && ISQPOINTF(1) && ISQFONT(2) && ISCHAR(3) )
  {
    QPainterPath_addText1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISQFONT(3) && ISCHAR(4) )
  {
    QPainterPath_addText2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal angleAtPercent ( qreal t ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_ANGLEATPERCENT )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQREAL( obj->angleAtPercent ( PQREAL(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void arcMoveTo ( const QRectF & rectangle, qreal angle )
*/
void QPainterPath_arcMoveTo1 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->arcMoveTo ( *PQRECTF(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void arcMoveTo ( qreal x, qreal y, qreal width, qreal height, qreal angle )
*/
void QPainterPath_arcMoveTo2 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->arcMoveTo ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void arcMoveTo ( const QRectF & rectangle, qreal angle )
//[2]void arcMoveTo ( qreal x, qreal y, qreal width, qreal height, qreal angle )

HB_FUNC_STATIC( QPAINTERPATH_ARCMOVETO )
{
  if( ISNUMPAR(2) && ISQRECTF(1) && ISNUM(2) )
  {
    QPainterPath_arcMoveTo1();
  }
  else if( ISNUMPAR(5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) )
  {
    QPainterPath_arcMoveTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void arcTo ( const QRectF & rectangle, qreal startAngle, qreal sweepLength )
*/
void QPainterPath_arcTo1 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->arcTo ( *PQRECTF(1), PQREAL(2), PQREAL(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void arcTo ( qreal x, qreal y, qreal width, qreal height, qreal startAngle, qreal sweepLength )
*/
void QPainterPath_arcTo2 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->arcTo ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void arcTo ( const QRectF & rectangle, qreal startAngle, qreal sweepLength )
//[2]void arcTo ( qreal x, qreal y, qreal width, qreal height, qreal startAngle, qreal sweepLength )

HB_FUNC_STATIC( QPAINTERPATH_ARCTO )
{
  if( ISNUMPAR(3) && ISQRECTF(1) && ISNUM(2) && ISNUM(3) )
  {
    QPainterPath_arcTo1();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QPainterPath_arcTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF boundingRect () const
*/
HB_FUNC_STATIC( QPAINTERPATH_BOUNDINGRECT )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
void closeSubpath ()
*/
HB_FUNC_STATIC( QPAINTERPATH_CLOSESUBPATH )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->closeSubpath ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void connectPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QPAINTERPATH_CONNECTPATH )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTERPATH(1) )
    {
      obj->connectPath ( *PQPAINTERPATH(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool contains ( const QPointF & point ) const
*/
void QPainterPath_contains1 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains ( *PQPOINTF(1) ) );
  }
}

/*
bool contains ( const QRectF & rectangle ) const
*/
void QPainterPath_contains2 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains ( *PQRECTF(1) ) );
  }
}

/*
bool contains ( const QPainterPath & p ) const
*/
void QPainterPath_contains3 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains ( *PQPAINTERPATH(1) ) );
  }
}

//[1]bool contains ( const QPointF & point ) const
//[2]bool contains ( const QRectF & rectangle ) const
//[3]bool contains ( const QPainterPath & p ) const

HB_FUNC_STATIC( QPAINTERPATH_CONTAINS )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_contains1();
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPainterPath_contains2();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QPainterPath_contains3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRectF controlPointRect () const
*/
HB_FUNC_STATIC( QPAINTERPATH_CONTROLPOINTRECT )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRectF * ptr = new QRectF( obj->controlPointRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
void cubicTo ( const QPointF & c1, const QPointF & c2, const QPointF & endPoint )
*/
void QPainterPath_cubicTo1 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->cubicTo ( *PQPOINTF(1), *PQPOINTF(2), *PQPOINTF(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void cubicTo ( qreal c1X, qreal c1Y, qreal c2X, qreal c2Y, qreal endPointX, qreal endPointY )
*/
void QPainterPath_cubicTo2 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->cubicTo ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), PQREAL(5), PQREAL(6) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void cubicTo ( const QPointF & c1, const QPointF & c2, const QPointF & endPoint )
//[2]void cubicTo ( qreal c1X, qreal c1Y, qreal c2X, qreal c2Y, qreal endPointX, qreal endPointY )

HB_FUNC_STATIC( QPAINTERPATH_CUBICTO )
{
  if( ISNUMPAR(3) && ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINTF(3) )
  {
    QPainterPath_cubicTo1();
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    QPainterPath_cubicTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPointF currentPosition () const
*/
HB_FUNC_STATIC( QPAINTERPATH_CURRENTPOSITION )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPointF * ptr = new QPointF( obj->currentPosition () );
    _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
int elementCount () const
*/
HB_FUNC_STATIC( QPAINTERPATH_ELEMENTCOUNT )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->elementCount () );
  }
}

/*
Qt::FillRule fillRule () const
*/
HB_FUNC_STATIC( QPAINTERPATH_FILLRULE )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->fillRule () );
  }
}

/*
QPainterPath intersected ( const QPainterPath & p ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_INTERSECTED )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTERPATH(1) )
    {
      QPainterPath * ptr = new QPainterPath( obj->intersected ( *PQPAINTERPATH(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool intersects ( const QRectF & rectangle ) const
*/
void QPainterPath_intersects1 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->intersects ( *PQRECTF(1) ) );
  }
}

/*
bool intersects ( const QPainterPath & p ) const
*/
void QPainterPath_intersects2 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->intersects ( *PQPAINTERPATH(1) ) );
  }
}

//[1]bool intersects ( const QRectF & rectangle ) const
//[2]bool intersects ( const QPainterPath & p ) const

HB_FUNC_STATIC( QPAINTERPATH_INTERSECTS )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QPainterPath_intersects1();
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    QPainterPath_intersects2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QPAINTERPATH_ISEMPTY )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
qreal length () const
*/
HB_FUNC_STATIC( QPAINTERPATH_LENGTH )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->length () );
  }
}

/*
void lineTo ( const QPointF & endPoint )
*/
void QPainterPath_lineTo1 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->lineTo ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void lineTo ( qreal x, qreal y )
*/
void QPainterPath_lineTo2 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->lineTo ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void lineTo ( const QPointF & endPoint )
//[2]void lineTo ( qreal x, qreal y )

HB_FUNC_STATIC( QPAINTERPATH_LINETO )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_lineTo1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPainterPath_lineTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void moveTo ( const QPointF & point )
*/
void QPainterPath_moveTo1 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->moveTo ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void moveTo ( qreal x, qreal y )
*/
void QPainterPath_moveTo2 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->moveTo ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void moveTo ( const QPointF & point )
//[2]void moveTo ( qreal x, qreal y )

HB_FUNC_STATIC( QPAINTERPATH_MOVETO )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_moveTo1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPainterPath_moveTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
qreal percentAtLength ( qreal len ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_PERCENTATLENGTH )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQREAL( obj->percentAtLength ( PQREAL(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPointF pointAtPercent ( qreal t ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_POINTATPERCENT )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QPointF * ptr = new QPointF( obj->pointAtPercent ( PQREAL(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void quadTo ( const QPointF & c, const QPointF & endPoint )
*/
void QPainterPath_quadTo1 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->quadTo ( *PQPOINTF(1), *PQPOINTF(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void quadTo ( qreal cx, qreal cy, qreal endPointX, qreal endPointY )
*/
void QPainterPath_quadTo2 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->quadTo ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void quadTo ( const QPointF & c, const QPointF & endPoint )
//[2]void quadTo ( qreal cx, qreal cy, qreal endPointX, qreal endPointY )

HB_FUNC_STATIC( QPAINTERPATH_QUADTO )
{
  if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    QPainterPath_quadTo1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QPainterPath_quadTo2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setElementPositionAt ( int index, qreal x, qreal y )
*/
HB_FUNC_STATIC( QPAINTERPATH_SETELEMENTPOSITIONAT )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) )
    {
      obj->setElementPositionAt ( PINT(1), PQREAL(2), PQREAL(3) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFillRule ( Qt::FillRule fillRule )
*/
HB_FUNC_STATIC( QPAINTERPATH_SETFILLRULE )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setFillRule ( (Qt::FillRule) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPainterPath simplified () const
*/
HB_FUNC_STATIC( QPAINTERPATH_SIMPLIFIED )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->simplified () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
qreal slopeAtPercent ( qreal t ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_SLOPEATPERCENT )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQREAL( obj->slopeAtPercent ( PQREAL(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPainterPath subtracted ( const QPainterPath & p ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_SUBTRACTED )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTERPATH(1) )
    {
      QPainterPath * ptr = new QPainterPath( obj->subtracted ( *PQPAINTERPATH(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void swap ( QPainterPath & other )
*/
HB_FUNC_STATIC( QPAINTERPATH_SWAP )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTERPATH(1) )
    {
      QPainterPath * par1 = (QPainterPath *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPolygonF toFillPolygon ( const QTransform & matrix ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_TOFILLPOLYGON1 )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->toFillPolygon ( *PQTRANSFORM(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

//[1]QPolygonF toFillPolygon ( const QTransform & matrix ) const
//[2]QPolygonF toFillPolygon ( const QMatrix & matrix = QMatrix() ) const

HB_FUNC_STATIC( QPAINTERPATH_TOFILLPOLYGON )
{
  if( ISNUMPAR(1) && ISQTRANSFORM(1) )
  {
    HB_FUNC_EXEC( QPAINTERPATH_TOFILLPOLYGON1 );
  }
  //else if( ISBETWEEN(0,1) && ISQMATRIX(1) ) // TODO: verificar e implementar(?)
  //{
  //  HB_FUNC_EXEC( QPAINTERPATH_TOFILLPOLYGON2 );
  //}
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPainterPath toReversed () const
*/
HB_FUNC_STATIC( QPAINTERPATH_TOREVERSED )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->toReversed () );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
void translate ( qreal dx, qreal dy )
*/
void QPainterPath_translate1 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( PQREAL(1), PQREAL(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate ( const QPointF & offset )
*/
void QPainterPath_translate2 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate ( *PQPOINTF(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void translate ( qreal dx, qreal dy )
//[2]void translate ( const QPointF & offset )

HB_FUNC_STATIC( QPAINTERPATH_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPainterPath_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPainterPath translated ( qreal dx, qreal dy ) const
*/
void QPainterPath_translated1 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->translated ( PQREAL(1), PQREAL(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
QPainterPath translated ( const QPointF & offset ) const
*/
void QPainterPath_translated2 ()
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->translated ( *PQPOINTF(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

//[1]QPainterPath translated ( qreal dx, qreal dy ) const
//[2]QPainterPath translated ( const QPointF & offset ) const

HB_FUNC_STATIC( QPAINTERPATH_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPainterPath_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    QPainterPath_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPainterPath united ( const QPainterPath & p ) const
*/
HB_FUNC_STATIC( QPAINTERPATH_UNITED )
{
  QPainterPath * obj = (QPainterPath *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTERPATH(1) )
    {
      QPainterPath * ptr = new QPainterPath( obj->united ( *PQPAINTERPATH(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

$extraMethods

#pragma ENDDUMP