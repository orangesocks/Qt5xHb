/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QPrintPreviewDialogSlots.h"

QPrintPreviewDialogSlots::QPrintPreviewDialogSlots(QObject *parent) : QObject(parent)
{
}

QPrintPreviewDialogSlots::~QPrintPreviewDialogSlots()
{
}
void QPrintPreviewDialogSlots::paintRequested( QPrinter * printer )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "paintRequested(QPrinter*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QPRINTPREVIEWDIALOG" );
    PHB_ITEM pprinter = Signals_return_object( (void *) printer, "QPRINTER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprinter );
    hb_itemRelease( psender );
    hb_itemRelease( pprinter );
  }
}

void QPrintPreviewDialogSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QPrintPreviewDialog * obj = (QPrintPreviewDialog *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QPrintPreviewDialogSlots * s = QCoreApplication::instance()->findChild<QPrintPreviewDialogSlots *>();

    if( s == NULL )
    {
      s = new QPrintPreviewDialogSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
