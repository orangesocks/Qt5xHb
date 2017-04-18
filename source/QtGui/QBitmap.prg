/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"



CLASS QBitmap INHERIT QPixmap

   DATA class_id INIT Class_Id_QBitmap
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD clear
   METHOD transformed
   METHOD fromData
   METHOD fromImage
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBitmap
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QBitmap>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QBitmap>
#endif

/*
QBitmap ()
*/
HB_FUNC_STATIC( QBITMAP_NEW1 )
{
  QBitmap * o = new QBitmap (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBitmap ( const QPixmap & pixmap )
*/
HB_FUNC_STATIC( QBITMAP_NEW2 )
{
  QPixmap * par1 = (QPixmap *) _qt5xhb_itemGetPtr(1);
  QBitmap * o = new QBitmap ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBitmap ( int width, int height )
*/
HB_FUNC_STATIC( QBITMAP_NEW3 )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QBitmap * o = new QBitmap ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBitmap ( const QSize & size )
*/
HB_FUNC_STATIC( QBITMAP_NEW4 )
{
  QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
  QBitmap * o = new QBitmap ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBitmap ( const QString & fileName, const char * format = 0 )
*/
HB_FUNC_STATIC( QBITMAP_NEW5 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  const char * par2 = ISNIL(2)? 0 : hb_parc(2);
  QBitmap * o = new QBitmap ( par1,  (const char *) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QBitmap ()
//[2]QBitmap ( const QPixmap & pixmap )
//[3]QBitmap ( int width, int height )
//[4]QBitmap ( const QSize & size )
//[5]QBitmap ( const QString & fileName, const char * format = 0 )

HB_FUNC_STATIC( QBITMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QBITMAP_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    HB_FUNC_EXEC( QBITMAP_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QBITMAP_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QBITMAP_NEW4 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QBITMAP_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBITMAP_DELETE )
{
  QBitmap * obj = (QBitmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clear ()
*/
HB_FUNC_STATIC( QBITMAP_CLEAR )
{
  QBitmap * obj = (QBitmap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QBitmap transformed ( const QTransform & matrix ) const
*/
HB_FUNC_STATIC( QBITMAP_TRANSFORMED )
{
  QBitmap * obj = (QBitmap *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * par1 = (QTransform *) _qt5xhb_itemGetPtr(1);
    QBitmap * ptr = new QBitmap( obj->transformed ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QBITMAP", true );
  }
}


/*
static QBitmap fromData ( const QSize & size, const uchar * bits, QImage::Format monoFormat = QImage::Format_MonoLSB )
*/
HB_FUNC_STATIC( QBITMAP_FROMDATA )
{
  QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
  const uchar * par2 = (const uchar *) _qt5xhb_itemGetPtr(2);
  int par3 = ISNIL(3)? (int) QImage::Format_MonoLSB : hb_parni(3);
  QBitmap * ptr = new QBitmap( QBitmap::fromData ( *par1, par2,  (QImage::Format) par3 ) );
  _qt5xhb_createReturnClass ( ptr, "QBITMAP", true );
}


/*
static QBitmap fromImage ( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QBITMAP_FROMIMAGE )
{
  QImage * par1 = (QImage *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) Qt::AutoColor : hb_parni(2);
  QBitmap * ptr = new QBitmap( QBitmap::fromImage ( *par1,  (Qt::ImageConversionFlags) par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QBITMAP", true );
}



#pragma ENDDUMP
