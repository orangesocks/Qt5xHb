/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QPrintDialogSlots.h"


static SlotsQPrintDialog * s = NULL;

SlotsQPrintDialog::SlotsQPrintDialog(QObject *parent) : QObject(parent)
{
}

SlotsQPrintDialog::~SlotsQPrintDialog()
{
}

void SlotsQPrintDialog::accepted ( QPrinter * printer )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "accepted(QPrinter*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pprinter = hb_itemPutPtr( NULL, (QPrinter *) printer );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pprinter );
    hb_itemRelease( psender );
    hb_itemRelease( pprinter );
  }
}

HB_FUNC( QPRINTDIALOG_ONACCEPTED )
{
  if( s == NULL )
  {
    s = new SlotsQPrintDialog(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "accepted(QPrinter*)", "accepted(QPrinter*)" ) );
}
