/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QColumnViewSlots.h"


static SlotsQColumnView * s = NULL;

SlotsQColumnView::SlotsQColumnView(QObject *parent) : QObject(parent)
{
}

SlotsQColumnView::~SlotsQColumnView()
{
}

void SlotsQColumnView::updatePreviewWidget ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "updatePreviewWidget(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

HB_FUNC( QCOLUMNVIEW_ONUPDATEPREVIEWWIDGET )
{
  if( s == NULL )
  {
    s = new SlotsQColumnView(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "updatePreviewWidget(QModelIndex)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(updatePreviewWidget(QModelIndex)), s, SLOT(updatePreviewWidget(QModelIndex)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "updatePreviewWidget(QModelIndex)";
    ret = object->disconnect(object, SIGNAL(updatePreviewWidget(QModelIndex)), s, SLOT(updatePreviewWidget(QModelIndex)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
}
