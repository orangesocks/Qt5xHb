$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPIXMAP
#endif

CLASS QSplashScreen INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD finish
   METHOD pixmap
   METHOD setPixmap
   METHOD repaint
   METHOD clearMessage
   METHOD showMessage

   METHOD onMessageChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSplashScreen ( const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
*/
void QSplashScreen_new1 ()
{
  QPixmap par1 = ISNIL(1)? QPixmap() : *(QPixmap *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QSplashScreen * o = new QSplashScreen ( par1, (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QSplashScreen ( QWidget * parent, const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
*/
void QSplashScreen_new2 ()
{
  QPixmap par2 = ISNIL(2)? QPixmap() : *(QPixmap *) _qt5xhb_itemGetPtr(2);
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QSplashScreen * o = new QSplashScreen ( PQWIDGET(1), par2, (Qt::WindowFlags) par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QSplashScreen ( const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )
//[2]QSplashScreen ( QWidget * parent, const QPixmap & pixmap = QPixmap(), Qt::WindowFlags f = 0 )

HB_FUNC_STATIC( QSPLASHSCREEN_NEW )
{
  if( ISBETWEEN(0,2) && (ISQPIXMAP(1)||ISNIL(1)) && ISOPTNUM(2) )
  {
    QSplashScreen_new1();
  }
  else if( ISBETWEEN(1,3) && ISQWIDGET(1) && (ISQPIXMAP(2)||ISNIL(2)) && ISOPTNUM(3) )
  {
    QSplashScreen_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void finish ( QWidget * mainWin )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_FINISH )
{
  QSplashScreen * obj = (QSplashScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      obj->finish ( PQWIDGET(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QPixmap pixmap () const
*/
HB_FUNC_STATIC( QSPLASHSCREEN_PIXMAP )
{
  QSplashScreen * obj = (QSplashScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPixmap * ptr = new QPixmap( obj->pixmap () );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}

/*
void setPixmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_SETPIXMAP )
{
  QSplashScreen * obj = (QSplashScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPIXMAP(1) )
    {
      obj->setPixmap ( *PQPIXMAP(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void repaint ()
*/
HB_FUNC_STATIC( QSPLASHSCREEN_REPAINT )
{
  QSplashScreen * obj = (QSplashScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->repaint ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clearMessage ()
*/
HB_FUNC_STATIC( QSPLASHSCREEN_CLEARMESSAGE )
{
  QSplashScreen * obj = (QSplashScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clearMessage ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showMessage ( const QString & message, int alignment = Qt::AlignLeft, const QColor & color = Qt::black )
*/
HB_FUNC_STATIC( QSPLASHSCREEN_SHOWMESSAGE )
{
  QSplashScreen * obj = (QSplashScreen *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) && (ISQCOLOR(3)||ISCHAR(3)||ISNIL(3)) )
    {
      QColor par3 = ISNIL(3)? Qt::black : ISOBJECT(3)? *(QColor *) _qt5xhb_itemGetPtr(3) : QColor(hb_parc(3));
      obj->showMessage ( PQSTRING(1), OPINT(2,Qt::AlignLeft), par3 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP