/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QAudioOutputSelectorControlSlots.h"

QAudioOutputSelectorControlSlots::QAudioOutputSelectorControlSlots( QObject *parent ) : QObject( parent )
{
}

QAudioOutputSelectorControlSlots::~QAudioOutputSelectorControlSlots()
{
}

void QAudioOutputSelectorControlSlots::activeOutputChanged( const QString & name )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "activeOutputChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QAUDIOOUTPUTSELECTORCONTROL" );
    PHB_ITEM pname = hb_itemPutC( NULL, QSTRINGTOSTRING(name) );

    hb_vmEvalBlockV( cb, 2, psender, pname );

    hb_itemRelease( psender );
    hb_itemRelease( pname );
  }
}

void QAudioOutputSelectorControlSlots::availableOutputsChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "availableOutputsChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QAUDIOOUTPUTSELECTORCONTROL" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QAudioOutputSelectorControlSlots_connect_signal( const QString & signal, const QString & slot )
{
  QAudioOutputSelectorControl * obj = (QAudioOutputSelectorControl *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QAudioOutputSelectorControlSlots * s = QCoreApplication::instance()->findChild<QAudioOutputSelectorControlSlots *>();

    if( s == NULL )
    {
      s = new QAudioOutputSelectorControlSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
