$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAINTERPATH
#endif

CLASS QPainterPathStroker

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD capStyle
   METHOD createStroke
   METHOD curveThreshold
   METHOD dashOffset
   METHOD dashPattern
   METHOD joinStyle
   METHOD miterLimit
   METHOD setCapStyle
   METHOD setCurveThreshold
   METHOD setDashOffset
   METHOD setDashPattern
   METHOD setJoinStyle
   METHOD setMiterLimit
   METHOD setWidth
   METHOD width

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
QPainterPathStroker ()
*/
void QPainterPathStroker_new1 ()
{
  QPainterPathStroker * o = new QPainterPathStroker ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QPainterPathStroker( const QPen & pen )
*/
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
void QPainterPathStroker_new2 ()
{
  QPainterPathStroker * o = new QPainterPathStroker ( *PQPEN(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}
#endif

//[1]QPainterPathStroker ()
//[2]QPainterPathStroker( const QPen & pen )

HB_FUNC_STATIC( QPAINTERPATHSTROKER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPainterPathStroker_new1();
  }
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  else if( ISNUMPAR(1) && ISQPEN(1) )
  {
    QPainterPathStroker_new2();
  }
#endif
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Qt::PenCapStyle capStyle () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_CAPSTYLE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->capStyle () );
  }
}

/*
QPainterPath createStroke ( const QPainterPath & path ) const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_CREATESTROKE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTERPATH(1) )
    {
      QPainterPath * ptr = new QPainterPath( obj->createStroke ( *PQPAINTERPATH(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
qreal curveThreshold () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_CURVETHRESHOLD )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->curveThreshold () );
  }
}

/*
qreal dashOffset () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_DASHOFFSET )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->dashOffset () );
  }
}

/*
QVector<qreal> dashPattern () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_DASHPATTERN )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVector<qreal> list = obj->dashPattern ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutND( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
Qt::PenJoinStyle joinStyle () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_JOINSTYLE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->joinStyle () );
  }
}

/*
qreal miterLimit () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_MITERLIMIT )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->miterLimit () );
  }
}

/*
void setCapStyle ( Qt::PenCapStyle style )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETCAPSTYLE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCapStyle ( (Qt::PenCapStyle) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurveThreshold ( qreal threshold )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETCURVETHRESHOLD )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCurveThreshold ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDashOffset ( qreal offset )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETDASHOFFSET )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setDashOffset ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDashPattern ( Qt::PenStyle style )
*/
void QPainterPathStroker_setDashPattern1 ()
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setDashPattern ( (Qt::PenStyle) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDashPattern ( const QVector<qreal> & dashPattern )
*/
void QPainterPathStroker_setDashPattern2 ()
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVector<qreal> par1;
    PHB_ITEM aValues1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aValues1);
    int temp1;
    for (i1=0;i1<nLen1;i1++)
    {
      temp1 = hb_arrayGetND(aValues1, i1+1);
      par1 << temp1;
    }
    obj->setDashPattern ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setDashPattern ( Qt::PenStyle style )
//[2]void setDashPattern ( const QVector<qreal> & dashPattern )

HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETDASHPATTERN )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPainterPathStroker_setDashPattern1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QPainterPathStroker_setDashPattern2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setJoinStyle ( Qt::PenJoinStyle style )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETJOINSTYLE )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setJoinStyle ( (Qt::PenJoinStyle) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMiterLimit ( qreal limit )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETMITERLIMIT )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setMiterLimit ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidth ( qreal width )
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_SETWIDTH )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setWidth ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal width () const
*/
HB_FUNC_STATIC( QPAINTERPATHSTROKER_WIDTH )
{
  QPainterPathStroker * obj = (QPainterPathStroker *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->width () );
  }
}

$extraMethods

#pragma ENDDUMP