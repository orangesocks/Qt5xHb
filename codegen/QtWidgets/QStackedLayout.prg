$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QStackedLayout INHERIT QLayout

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addWidget
   METHOD currentIndex
   METHOD currentWidget
   METHOD insertWidget
   METHOD setStackingMode
   METHOD stackingMode
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget

   METHOD onSetCurrentIndex
   METHOD onSetCurrentWidget

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QStackedLayout ()
*/
void QStackedLayout_new1 ()
{
  QStackedLayout * o = new QStackedLayout ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QStackedLayout ( QWidget * parent )
*/
void QStackedLayout_new2 ()
{
  QStackedLayout * o = new QStackedLayout ( PQWIDGET(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QStackedLayout ( QLayout * parentLayout )
*/
void QStackedLayout_new3 ()
{
  QStackedLayout * o = new QStackedLayout ( PQLAYOUT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QStackedLayout ()
//[2]QStackedLayout ( QWidget * parent )
//[3]QStackedLayout ( QLayout * parentLayout )

HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStackedLayout_new1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QStackedLayout_new2();
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    QStackedLayout_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int addWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_ADDWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->addWidget ( PQWIDGET(1) ) );
  }
}

/*
int currentIndex () const
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_CURRENTINDEX )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->currentIndex () );
  }
}

/*
QWidget * currentWidget () const
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_CURRENTWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->currentWidget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
int insertWidget ( int index, QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_INSERTWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->insertWidget ( PINT(1), PQWIDGET(2) ) );
  }
}

/*
void setStackingMode ( StackingMode stackingMode )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_SETSTACKINGMODE )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setStackingMode ( (QStackedLayout::StackingMode) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
StackingMode stackingMode () const
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_STACKINGMODE )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->stackingMode () );
  }
}

/*
QWidget * widget ( int index ) const
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_WIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QWidget * ptr = obj->widget ( PINT(1) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_SETCURRENTINDEX )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCurrentIndex ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_SETCURRENTWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setCurrentWidget ( PQWIDGET(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP