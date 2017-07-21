$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QTEXTLENGTH
#endif

CLASS QTextFrameFormat INHERIT QTextFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setPosition
   METHOD position
   METHOD setBorder
   METHOD border
   METHOD setBorderBrush
   METHOD borderBrush
   METHOD setBorderStyle
   METHOD borderStyle
   METHOD setMargin
   METHOD margin
   METHOD setTopMargin
   METHOD topMargin
   METHOD setBottomMargin
   METHOD bottomMargin
   METHOD setLeftMargin
   METHOD leftMargin
   METHOD setRightMargin
   METHOD rightMargin
   METHOD setPadding
   METHOD padding
   METHOD setWidth1
   METHOD setWidth2
   METHOD width
   METHOD setHeight1
   METHOD setHeight2
   METHOD height
   METHOD setPageBreakPolicy
   METHOD pageBreakPolicy

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextFrameFormat()
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_NEW )
{
  QTextFrameFormat * o = new QTextFrameFormat ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_ISVALID )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
void setPosition(Position f)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETPOSITION )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPosition ( (QTextFrameFormat::Position) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Position position() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_POSITION )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->position () );
  }
}


/*
void setBorder(qreal border)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBORDER )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBorder ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal border() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BORDER )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->border () );
  }
}


/*
void setBorderBrush(const QBrush &brush)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBORDERBRUSH )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBorderBrush ( *PQBRUSH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QBrush borderBrush() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BORDERBRUSH )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->borderBrush () );
    _qt5xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
void setBorderStyle(BorderStyle style)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBORDERSTYLE )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBorderStyle ( (QTextFrameFormat::BorderStyle) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
BorderStyle borderStyle() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BORDERSTYLE )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->borderStyle () );
  }
}


/*
void setMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal margin() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_MARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->margin () );
  }
}


/*
void setTopMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETTOPMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTopMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal topMargin() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_TOPMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->topMargin () );
  }
}


/*
void setBottomMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETBOTTOMMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBottomMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal bottomMargin() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_BOTTOMMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->bottomMargin () );
  }
}


/*
void setLeftMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETLEFTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLeftMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal leftMargin() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_LEFTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->leftMargin () );
  }
}


/*
void setRightMargin(qreal margin)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETRIGHTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRightMargin ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal rightMargin() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_RIGHTMARGIN )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->rightMargin () );
  }
}


/*
void setPadding(qreal padding)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETPADDING )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPadding ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal padding() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_PADDING )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->padding () );
  }
}


/*
void setWidth(qreal width)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETWIDTH1 )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidth(const QTextLength &length)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETWIDTH2 )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWidth ( *PQTEXTLENGTH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextLength width() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_WIDTH )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLength * ptr = new QTextLength( obj->width () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTLENGTH" );
  }
}


/*
void setHeight(qreal height)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETHEIGHT1 )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHeight ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHeight(const QTextLength &height)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETHEIGHT2 )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHeight ( *PQTEXTLENGTH(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextLength height() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_HEIGHT )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextLength * ptr = new QTextLength( obj->height () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTLENGTH" );
  }
}


/*
void setPageBreakPolicy(PageBreakFlags flags)
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_SETPAGEBREAKPOLICY )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPageBreakPolicy ( (QTextFrameFormat::PageBreakFlags) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
PageBreakFlags pageBreakPolicy() const
*/
HB_FUNC_STATIC( QTEXTFRAMEFORMAT_PAGEBREAKPOLICY )
{
  QTextFrameFormat * obj = (QTextFrameFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pageBreakPolicy () );
  }
}



#pragma ENDDUMP
