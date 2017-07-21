$header

#include "hbclass.ch"

CLASS QWinTaskbarProgress INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD value
   METHOD setValue
   METHOD minimum
   METHOD setMinimum
   METHOD maximum
   METHOD setMaximum
   METHOD isVisible
   METHOD setVisible
   METHOD isPaused
   METHOD setPaused
   METHOD isStopped
   METHOD setRange
   METHOD reset
   METHOD show
   METHOD hide
   METHOD pause
   METHOD resume
   METHOD stop

   METHOD onValueChanged
   METHOD onMinimumChanged
   METHOD onMaximumChanged
   METHOD onVisibilityChanged
   METHOD onPausedChanged
   METHOD onStoppedChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

/*
explicit QWinTaskbarProgress(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * o = new QWinTaskbarProgress ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,2,0

/*
int value() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_VALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->value () );
  }
#endif
}

/*
void setValue(int value)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETVALUE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setValue ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int minimum() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_MINIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->minimum () );
  }
#endif
}

/*
void setMinimum(int minimum)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETMINIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMinimum ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int maximum() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_MAXIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->maximum () );
  }
#endif
}

/*
void setMaximum(int maximum)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETMAXIMUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMaximum ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isVisible() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_ISVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isVisible () );
  }
#endif
}

/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isPaused() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_ISPAUSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isPaused () );
  }
#endif
}

/*
void setPaused(bool paused)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETPAUSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPaused ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isStopped() const
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_ISSTOPPED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isStopped () );
  }
#endif
}


/*
void setRange(int minimum, int maximum)
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SETRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRange ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void reset()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_RESET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void show()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_SHOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->show ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void hide()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_HIDE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->hide ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void pause()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_PAUSE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->pause ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void resume()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_RESUME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->resume ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void stop()
*/
HB_FUNC_STATIC( QWINTASKBARPROGRESS_STOP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinTaskbarProgress * obj = (QWinTaskbarProgress *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
