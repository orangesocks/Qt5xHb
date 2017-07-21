$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZEF
REQUEST QPAGELAYOUT
#endif

CLASS QPagedPaintDevice INHERIT QPaintDevice

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD newPage
   METHOD pageSize
   METHOD setPageSize
   METHOD pageSizeMM
   METHOD setPageSizeMM
   METHOD pageLayout
   METHOD setPageLayout
   METHOD setPageOrientation
   METHOD setPageMargins1
   METHOD setPageMargins2
   METHOD setPageMargins

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod


/*
virtual bool newPage() = 0
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_NEWPAGE )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->newPage () );
  }
}


/*
PageSize pageSize() const
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_PAGESIZE )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pageSize () );
  }
}

/*
virtual void setPageSize(PageSize size)
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGESIZE )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPageSize ( (QPagedPaintDevice::PageSize) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizeF pageSizeMM() const
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_PAGESIZEMM )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->pageSizeMM () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

/*
virtual void setPageSizeMM(const QSizeF & size)
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGESIZEMM )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPageSizeMM ( *PQSIZEF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QPageLayout pageLayout() const
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_PAGELAYOUT )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPageLayout * ptr = new QPageLayout( obj->pageLayout () );
    _qt5xhb_createReturnClass ( ptr, "QPAGELAYOUT", true );
  }
}

/*
bool setPageLayout(const QPageLayout &pageLayout)
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGELAYOUT )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setPageLayout ( *PQPAGELAYOUT(1) ) );
  }
}


/*
bool setPageOrientation(QPageLayout::Orientation orientation)
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGEORIENTATION )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setPageOrientation ( (QPageLayout::Orientation) hb_parni(1) ) );
  }
}


/*
bool setPageMargins(const QMarginsF &margins)
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGEMARGINS1 )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setPageMargins ( *PQMARGINSF(1) ) );
  }
}

/*
bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGEMARGINS2 )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->setPageMargins ( *PQMARGINSF(1), (QPageLayout::Unit) hb_parni(2) ) );
  }
}


//[1]bool setPageMargins(const QMarginsF &margins)
//[2]bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)

HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGEMARGINS )
{
  if( ISNUMPAR(1) && ISQMARGINSF(1) )
  {
    HB_FUNC_EXEC( QPAGEDPAINTDEVICE_SETPAGEMARGINS1 );
  }
  else if( ISNUMPAR(2) && ISQMARGINSF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAGEDPAINTDEVICE_SETPAGEMARGINS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


#pragma ENDDUMP
