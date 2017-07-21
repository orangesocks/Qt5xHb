$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLAYOUTITEM
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QFormLayout INHERIT QLayout

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addRow
   METHOD fieldGrowthPolicy
   METHOD formAlignment
   METHOD horizontalSpacing
   METHOD insertRow
   METHOD itemAt
   METHOD labelAlignment
   METHOD labelForField
   METHOD rowCount
   METHOD rowWrapPolicy
   METHOD setFieldGrowthPolicy
   METHOD setFormAlignment
   METHOD setHorizontalSpacing
   METHOD setItem
   METHOD setLabelAlignment
   METHOD setLayout
   METHOD setRowWrapPolicy
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD setWidget
   METHOD spacing
   METHOD verticalSpacing
   METHOD addItem
   METHOD count
   METHOD expandingDirections
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD takeAt

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QFormLayout ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QFORMLAYOUT_NEW )
{
  QFormLayout * o = new QFormLayout ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void addRow ( QWidget * label, QWidget * field )
*/
void QFormLayout_addRow1 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addRow ( PQWIDGET(1), PQWIDGET(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRow ( QWidget * label, QLayout * field )
*/
void QFormLayout_addRow2 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addRow ( PQWIDGET(1), PQLAYOUT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRow ( const QString & labelText, QWidget * field )
*/
void QFormLayout_addRow3 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addRow ( PQSTRING(1), PQWIDGET(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRow ( const QString & labelText, QLayout * field )
*/
void QFormLayout_addRow4 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addRow ( PQSTRING(1), PQLAYOUT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRow ( QWidget * widget )
*/
void QFormLayout_addRow5 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addRow ( PQWIDGET(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addRow ( QLayout * layout )
*/
void QFormLayout_addRow6 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addRow ( PQLAYOUT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addRow ( QWidget * label, QWidget * field )
//[2]void addRow ( QWidget * label, QLayout * field )
//[3]void addRow ( const QString & labelText, QWidget * field )
//[4]void addRow ( const QString & labelText, QLayout * field )
//[5]void addRow ( QWidget * widget )
//[6]void addRow ( QLayout * layout )

HB_FUNC_STATIC( QFORMLAYOUT_ADDROW )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISQWIDGET(2) )
  {
    QFormLayout_addRow1();
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISQLAYOUT(2) )
  {
    QFormLayout_addRow2();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQWIDGET(2) )
  {
    QFormLayout_addRow3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISQLAYOUT(2) )
  {
    QFormLayout_addRow4();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QFormLayout_addRow5();
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    QFormLayout_addRow6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
FieldGrowthPolicy fieldGrowthPolicy () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_FIELDGROWTHPOLICY )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->fieldGrowthPolicy () );
  }
}

/*
Qt::Alignment formAlignment () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_FORMALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->formAlignment () );
  }
}

/*
int horizontalSpacing () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_HORIZONTALSPACING )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->horizontalSpacing () );
  }
}

/*
void insertRow ( int row, QWidget * label, QWidget * field )
*/
void QFormLayout_insertRow1 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->insertRow ( PINT(1), PQWIDGET(2), PQWIDGET(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row, QWidget * label, QLayout * field )
*/
void QFormLayout_insertRow2 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->insertRow ( PINT(1), PQWIDGET(2), PQLAYOUT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row, const QString & labelText, QWidget * field )
*/
void QFormLayout_insertRow3 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->insertRow ( PINT(1), PQSTRING(2), PQWIDGET(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row, const QString & labelText, QLayout * field )
*/
void QFormLayout_insertRow4 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->insertRow ( PINT(1), PQSTRING(2), PQLAYOUT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row, QWidget * widget )
*/
void QFormLayout_insertRow5 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->insertRow ( PINT(1), PQWIDGET(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRow ( int row, QLayout * layout )
*/
void QFormLayout_insertRow6 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->insertRow ( PINT(1), PQLAYOUT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void insertRow ( int row, QWidget * label, QWidget * field )
//[2]void insertRow ( int row, QWidget * label, QLayout * field )
//[3]void insertRow ( int row, const QString & labelText, QWidget * field )
//[4]void insertRow ( int row, const QString & labelText, QLayout * field )
//[5]void insertRow ( int row, QWidget * widget )
//[6]void insertRow ( int row, QLayout * layout )

HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISQWIDGET(3) )
  {
    QFormLayout_insertRow1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISQLAYOUT(3) )
  {
    QFormLayout_insertRow2();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISQWIDGET(3) )
  {
    QFormLayout_insertRow3();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISQLAYOUT(3) )
  {
    QFormLayout_insertRow4();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQWIDGET(2) )
  {
    QFormLayout_insertRow5();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQLAYOUT(2) )
  {
    QFormLayout_insertRow6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QLayoutItem * itemAt ( int row, ItemRole role ) const
*/
void QFormLayout_itemAt1 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLayoutItem * ptr = obj->itemAt ( PINT(1), (QFormLayout::ItemRole) hb_parni(2) );
    _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}

/*
virtual QLayoutItem * itemAt ( int index ) const
*/
void QFormLayout_itemAt2 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLayoutItem * ptr = obj->itemAt ( PINT(1) );
    _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
  }
}

//[1]QLayoutItem * itemAt ( int row, ItemRole role ) const
//[2]virtual QLayoutItem * itemAt ( int index ) const

HB_FUNC_STATIC( QFORMLAYOUT_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QFormLayout_itemAt1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFormLayout_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::Alignment labelAlignment () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_LABELALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->labelAlignment () );
  }
}

/*
QWidget * labelForField ( QWidget * field ) const
*/
void QFormLayout_labelForField1 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->labelForField ( PQWIDGET(1) );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * labelForField ( QLayout * field ) const
*/
void QFormLayout_labelForField2 ()
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->labelForField ( PQLAYOUT(1) );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

//[1]QWidget * labelForField ( QWidget * field ) const
//[2]QWidget * labelForField ( QLayout * field ) const

HB_FUNC_STATIC( QFORMLAYOUT_LABELFORFIELD )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QFormLayout_labelForField1();
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    QFormLayout_labelForField2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int rowCount () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_ROWCOUNT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->rowCount () );
  }
}

/*
RowWrapPolicy rowWrapPolicy () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_ROWWRAPPOLICY )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->rowWrapPolicy () );
  }
}

/*
void setFieldGrowthPolicy ( FieldGrowthPolicy policy )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETFIELDGROWTHPOLICY )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFieldGrowthPolicy ( (QFormLayout::FieldGrowthPolicy) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFormAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETFORMALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFormAlignment ( (Qt::Alignment) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHorizontalSpacing ( int spacing )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETHORIZONTALSPACING )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setHorizontalSpacing ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItem ( int row, ItemRole role, QLayoutItem * item )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETITEM )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setItem ( PINT(1), (QFormLayout::ItemRole) hb_parni(2), PQLAYOUTITEM(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLabelAlignment ( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETLABELALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setLabelAlignment ( (Qt::Alignment) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLayout ( int row, ItemRole role, QLayout * layout )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETLAYOUT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setLayout ( PINT(1), (QFormLayout::ItemRole) hb_parni(2), PQLAYOUT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRowWrapPolicy ( RowWrapPolicy policy )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETROWWRAPPOLICY )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setRowWrapPolicy ( (QFormLayout::RowWrapPolicy) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSpacing ( int spacing )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETSPACING )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setSpacing ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setVerticalSpacing ( int spacing )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETVERTICALSPACING )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setVerticalSpacing ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWidget ( int row, ItemRole role, QWidget * widget )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETWIDGET )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setWidget ( PINT(1), (QFormLayout::ItemRole) hb_parni(2), PQWIDGET(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int spacing () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_SPACING )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->spacing () );
  }
}

/*
int verticalSpacing () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_VERTICALSPACING )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->verticalSpacing () );
  }
}

/*
virtual void addItem ( QLayoutItem * item )
*/
HB_FUNC_STATIC( QFORMLAYOUT_ADDITEM )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addItem ( PQLAYOUTITEM(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int count () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_COUNT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
virtual Qt::Orientations expandingDirections () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_EXPANDINGDIRECTIONS )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->expandingDirections () );
  }
}

/*
virtual bool hasHeightForWidth () const
*/
$method=|bool|hasHeightForWidth|

/*
virtual int heightForWidth ( int width ) const
*/
$method=|int|heightForWidth|int

/*
virtual void invalidate ()
*/
$method=|void|invalidate|

/*
virtual QSize minimumSize () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_MINIMUMSIZE )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual void setGeometry ( const QRect & rect )
*/
$method=|void|setGeometry|const QRect &

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QFORMLAYOUT_SIZEHINT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QLayoutItem * takeAt ( int index )
*/
HB_FUNC_STATIC( QFORMLAYOUT_TAKEAT )
{
  QFormLayout * obj = (QFormLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QLayoutItem * ptr = obj->takeAt ( PINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QLAYOUTITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP