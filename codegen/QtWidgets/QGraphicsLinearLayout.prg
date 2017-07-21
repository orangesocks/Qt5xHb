$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QGRAPHICSLAYOUTITEM
REQUEST QSIZEF
#endif

CLASS QGraphicsLinearLayout INHERIT QGraphicsLayout

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addStretch
   METHOD alignment
   METHOD insertItem
   METHOD insertStretch
   METHOD itemSpacing
   METHOD orientation
   METHOD removeItem
   METHOD setAlignment
   METHOD setItemSpacing
   METHOD setOrientation
   METHOD setSpacing
   METHOD setStretchFactor
   METHOD spacing
   METHOD stretchFactor
   METHOD count
   METHOD invalidate
   METHOD itemAt
   METHOD removeAt
   METHOD setGeometry
   METHOD sizeHint

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QGraphicsLinearLayout ( QGraphicsLayoutItem * parent = 0 )
*/
void QGraphicsLinearLayout_new1 ()
{
  QGraphicsLayoutItem * par1 = ISNIL(1)? 0 : (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(1);
  QGraphicsLinearLayout * o = new QGraphicsLinearLayout ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGraphicsLinearLayout ( Qt::Orientation orientation, QGraphicsLayoutItem * parent = 0 )
*/
void QGraphicsLinearLayout_new2 ()
{
  QGraphicsLayoutItem * par2 = ISNIL(2)? 0 : (QGraphicsLayoutItem *) _qt5xhb_itemGetPtr(2);
  QGraphicsLinearLayout * o = new QGraphicsLinearLayout ( (Qt::Orientation) hb_parni(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QGraphicsLinearLayout ( QGraphicsLayoutItem * parent = 0 )
//[2]QGraphicsLinearLayout ( Qt::Orientation orientation, QGraphicsLayoutItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSLAYOUTITEM(1)||ISNIL(1)) )
  {
    QGraphicsLinearLayout_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQGRAPHICSLAYOUTITEM(2)||ISNIL(2)) )
  {
    QGraphicsLinearLayout_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addItem ( QGraphicsLayoutItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ADDITEM )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSLAYOUTITEM(1) )
    {
      obj->addItem ( PQGRAPHICSLAYOUTITEM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addStretch ( int stretch = 1 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ADDSTRETCH )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      obj->addStretch ( OPINT(1,1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Alignment alignment ( QGraphicsLayoutItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ALIGNMENT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSLAYOUTITEM(1) )
    {
      hb_retni( obj->alignment ( PQGRAPHICSLAYOUTITEM(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void insertItem ( int index, QGraphicsLayoutItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_INSERTITEM )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQGRAPHICSLAYOUTITEM(2) )
    {
      obj->insertItem ( PINT(1), PQGRAPHICSLAYOUTITEM(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertStretch ( int index, int stretch = 1 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_INSERTSTRETCH )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      obj->insertStretch ( PINT(1), OPINT(2,1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
qreal itemSpacing ( int index ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ITEMSPACING )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RQREAL( obj->itemSpacing ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
Qt::Orientation orientation () const
*/
$method=|Qt::Orientation|orientation|

/*
void removeItem ( QGraphicsLayoutItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_REMOVEITEM )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSLAYOUTITEM(1) )
    {
      obj->removeItem ( PQGRAPHICSLAYOUTITEM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAlignment ( QGraphicsLayoutItem * item, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SETALIGNMENT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) )
    {
      obj->setAlignment ( PQGRAPHICSLAYOUTITEM(1), (Qt::Alignment) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemSpacing ( int index, qreal spacing )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SETITEMSPACING )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) )
    {
      obj->setItemSpacing ( PINT(1), PQREAL(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOrientation ( Qt::Orientation orientation )
*/
$method=|void|setOrientation|Qt::Orientation

/*
void setSpacing ( qreal spacing )
*/
$method=|void|setSpacing|qreal

/*
void setStretchFactor ( QGraphicsLayoutItem * item, int stretch )
*/
$method=|void|setStretchFactor|QGraphicsLayoutItem *,int

/*
qreal spacing () const
*/
$method=|qreal|spacing|

/*
int stretchFactor ( QGraphicsLayoutItem * item ) const
*/
$method=|int|stretchFactor|QGraphicsLayoutItem *

/*
virtual int count () const
*/
$method=|int|count|

/*
virtual void invalidate ()
*/
$method=|void|invalidate|

/*
virtual QGraphicsLayoutItem * itemAt ( int index ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_ITEMAT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QGraphicsLayoutItem * ptr = obj->itemAt ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QGRAPHICSLAYOUTITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void removeAt ( int index )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_REMOVEAT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->removeAt ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setGeometry ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SETGEOMETRY )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQRECTF(1) )
    {
      obj->setGeometry ( *PQRECTF(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSizeF sizeHint ( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_SIZEHINT )
{
  QGraphicsLinearLayout * obj = (QGraphicsLinearLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQSIZEF(2)||ISNIL(2)) )
    {
      QSizeF par2 = ISNIL(2)? QSizeF() : *(QSizeF *) _qt5xhb_itemGetPtr(2);
      QSizeF * ptr = new QSizeF( obj->sizeHint ( (Qt::SizeHint) hb_parni(1), par2 ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP