/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QFONT
REQUEST QICON
REQUEST QLOCALE
REQUEST QMODELINDEX
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QStyleOptionViewItem INHERIT QStyleOption

   METHOD new
   METHOD displayAlignment
   METHOD setDisplayAlignment
   METHOD decorationAlignment
   METHOD setDecorationAlignment
   METHOD textElideMode
   METHOD setTextElideMode
   METHOD decorationPosition
   METHOD setDecorationPosition
   METHOD decorationSize
   METHOD setDecorationSize
   METHOD font
   METHOD setFont
   METHOD showDecorationSelected
   METHOD setShowDecorationSelected
   METHOD features
   METHOD setFeatures
   METHOD locale
   METHOD setLocale
   METHOD widget
   METHOD setWidget
   METHOD index
   METHOD setIndex
   METHOD checkState
   METHOD setCheckState
   METHOD icon
   METHOD setIcon
   METHOD text
   METHOD setText
   METHOD viewItemPosition
   METHOD setViewItemPosition
   METHOD backgroundBrush
   METHOD setBackgroundBrush

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionViewItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionViewItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionViewItem>
#endif

/*
QStyleOptionViewItem()
*/
void QStyleOptionViewItem_new1()
{
  QStyleOptionViewItem * obj = new QStyleOptionViewItem();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOptionViewItem( const QStyleOptionViewItem & other )
*/
void QStyleOptionViewItem_new2()
{
  QStyleOptionViewItem * obj = new QStyleOptionViewItem( *PQSTYLEOPTIONVIEWITEM(1) );
  Qt5xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionViewItem_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONVIEWITEM(1) )
  {
    QStyleOptionViewItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::Alignment displayAlignment
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DISPLAYALIGNMENT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->displayAlignment );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETDISPLAYALIGNMENT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->displayAlignment= (Qt::Alignment) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Alignment decorationAlignment
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DECORATIONALIGNMENT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->decorationAlignment );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETDECORATIONALIGNMENT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->decorationAlignment= (Qt::Alignment) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::TextElideMode textElideMode
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_TEXTELIDEMODE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->textElideMode );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETTEXTELIDEMODE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->textElideMode= (Qt::TextElideMode) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Position decorationPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DECORATIONPOSITION )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->decorationPosition );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETDECORATIONPOSITION )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->decorationPosition= (QStyleOptionViewItem::Position) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize decorationSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DECORATIONSIZE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QSize * ptr = new QSize( obj->decorationSize );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETDECORATIONSIZE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->decorationSize= *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFont font
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_FONT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QFont * ptr = new QFont( obj->font );
      Qt5xHb::createReturnClass( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETFONT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->font= *PQFONT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool showDecorationSelected
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SHOWDECORATIONSELECTED )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->showDecorationSelected );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETSHOWDECORATIONSELECTED )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
      obj->showDecorationSelected= PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ViewItemFeatures features
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_FEATURES )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->features );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETFEATURES )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->features= (QStyleOptionViewItem::ViewItemFeatures) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QLocale locale
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_LOCALE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QLocale * ptr = new QLocale( obj->locale );
      Qt5xHb::createReturnClass( ptr, "QLOCALE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETLOCALE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQLOCALE(1) )
    {
      obj->locale= *PQLOCALE(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QWidget *widget
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_WIDGET )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      const QWidget * ptr = obj->widget;
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETWIDGET )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      obj->widget= PQWIDGET(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QModelIndex index
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_INDEX )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QModelIndex * ptr = new QModelIndex( obj->index );
      Qt5xHb::createReturnClass( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETINDEX )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      obj->index= *PQMODELINDEX(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::CheckState checkState
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_CHECKSTATE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->checkState );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETCHECKSTATE )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->checkState= (Qt::CheckState) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_ICON )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QIcon * ptr = new QIcon( obj->icon );
      Qt5xHb::createReturnClass( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETICON )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQICON(1) )
    {
      obj->icon= *PQICON(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_TEXT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETTEXT )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
      obj->text= PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ViewItemPosition viewItemPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_VIEWITEMPOSITION )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->viewItemPosition );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETVIEWITEMPOSITION )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
      obj->viewItemPosition= (QStyleOptionViewItem::ViewItemPosition) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QBrush backgroundBrush
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_BACKGROUNDBRUSH )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QBrush * ptr = new QBrush( obj->backgroundBrush );
      Qt5xHb::createReturnClass( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETBACKGROUNDBRUSH )
{
  QStyleOptionViewItem * obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->backgroundBrush= *PQBRUSH(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
