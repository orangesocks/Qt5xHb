$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QDragMoveEvent INHERIT QDropEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD accept1
   METHOD accept2
   METHOD accept
   METHOD answerRect
   METHOD ignore1
   METHOD ignore2
   METHOD ignore

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDragMoveEvent ( const QPoint & pos, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Type type = DragMove )
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_NEW )
{
  int par2 = hb_parni(2);
  const QMimeData * par3 = (const QMimeData *) _qt5xhb_itemGetPtr(3);
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  int par6 = ISNIL(6)? (int) QEvent::DragMove : hb_parni(6);
  QDragMoveEvent * o = new QDragMoveEvent ( *PQPOINT(1), (Qt::DropActions) par2, par3, (Qt::MouseButtons) par4, (Qt::KeyboardModifiers) par5, (QEvent::Type) par6 );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
void accept ( const QRect & rectangle )
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_ACCEPT1 )
{
  QDragMoveEvent * obj = (QDragMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->accept ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void accept ()
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_ACCEPT2 )
{
  QDragMoveEvent * obj = (QDragMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->accept ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void accept ( const QRect & rectangle )
//[2]void accept ()

HB_FUNC_STATIC( QDRAGMOVEEVENT_ACCEPT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QDRAGMOVEEVENT_ACCEPT1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDRAGMOVEEVENT_ACCEPT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect answerRect () const
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_ANSWERRECT )
{
  QDragMoveEvent * obj = (QDragMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->answerRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
void ignore ( const QRect & rectangle )
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_IGNORE1 )
{
  QDragMoveEvent * obj = (QDragMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->ignore ( *PQRECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void ignore ()
*/
HB_FUNC_STATIC( QDRAGMOVEEVENT_IGNORE2 )
{
  QDragMoveEvent * obj = (QDragMoveEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->ignore ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void ignore ( const QRect & rectangle )
//[2]void ignore ()

HB_FUNC_STATIC( QDRAGMOVEEVENT_IGNORE )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QDRAGMOVEEVENT_IGNORE1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDRAGMOVEEVENT_IGNORE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


#pragma ENDDUMP
