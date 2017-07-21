$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QRECT
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessibleObject INHERIT QAccessibleInterface

   DATA self_destruction INIT .F.

   METHOD isValid
   METHOD object
   METHOD rect
   METHOD setText
   METHOD childAt

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
bool isValid() const
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_ISVALID )
{
  QAccessibleObject * obj = (QAccessibleObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QObject *object() const
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_OBJECT )
{
  QAccessibleObject * obj = (QAccessibleObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->object ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
QRect rect() const
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_RECT )
{
  QAccessibleObject * obj = (QAccessibleObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->rect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
void setText(QAccessible::Text t, const QString &text)
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_SETTEXT )
{
  QAccessibleObject * obj = (QAccessibleObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setText ( (QAccessible::Text) hb_parni(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QAccessibleInterface *childAt(int x, int y) const
*/
HB_FUNC_STATIC( QACCESSIBLEOBJECT_CHILDAT )
{
  QAccessibleObject * obj = (QAccessibleObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAccessibleInterface * ptr = obj->childAt ( PINT(1), PINT(2) );
    _qt5xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
  }
}



#pragma ENDDUMP
