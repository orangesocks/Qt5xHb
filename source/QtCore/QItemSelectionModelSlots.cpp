/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QItemSelectionModelSlots.h"

QItemSelectionModelSlots::QItemSelectionModelSlots( QObject *parent ) : QObject( parent )
{
}

QItemSelectionModelSlots::~QItemSelectionModelSlots()
{
}

void QItemSelectionModelSlots::selectionChanged( const QItemSelection & selected, const QItemSelection & deselected )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "selectionChanged(QItemSelection,QItemSelection)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMSELECTIONMODEL" );
    PHB_ITEM pselected = Qt5xHb::Signals_return_object( (void *) &selected, "QITEMSELECTION" );
    PHB_ITEM pdeselected = Qt5xHb::Signals_return_object( (void *) &deselected, "QITEMSELECTION" );

    hb_vmEvalBlockV( cb, 3, psender, pselected, pdeselected );

    hb_itemRelease( psender );
    hb_itemRelease( pselected );
    hb_itemRelease( pdeselected );
  }
}

void QItemSelectionModelSlots::currentChanged( const QModelIndex & current, const QModelIndex & previous )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "currentChanged(QModelIndex,QModelIndex)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMSELECTIONMODEL" );
    PHB_ITEM pcurrent = Qt5xHb::Signals_return_object( (void *) &current, "QMODELINDEX" );
    PHB_ITEM pprevious = Qt5xHb::Signals_return_object( (void *) &previous, "QMODELINDEX" );

    hb_vmEvalBlockV( cb, 3, psender, pcurrent, pprevious );

    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

void QItemSelectionModelSlots::currentRowChanged( const QModelIndex & current, const QModelIndex & previous )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "currentRowChanged(QModelIndex,QModelIndex)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMSELECTIONMODEL" );
    PHB_ITEM pcurrent = Qt5xHb::Signals_return_object( (void *) &current, "QMODELINDEX" );
    PHB_ITEM pprevious = Qt5xHb::Signals_return_object( (void *) &previous, "QMODELINDEX" );

    hb_vmEvalBlockV( cb, 3, psender, pcurrent, pprevious );

    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

void QItemSelectionModelSlots::currentColumnChanged( const QModelIndex & current, const QModelIndex & previous )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "currentColumnChanged(QModelIndex,QModelIndex)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMSELECTIONMODEL" );
    PHB_ITEM pcurrent = Qt5xHb::Signals_return_object( (void *) &current, "QMODELINDEX" );
    PHB_ITEM pprevious = Qt5xHb::Signals_return_object( (void *) &previous, "QMODELINDEX" );

    hb_vmEvalBlockV( cb, 3, psender, pcurrent, pprevious );

    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

void QItemSelectionModelSlots_connect_signal( const QString & signal, const QString & slot )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QItemSelectionModelSlots * s = QCoreApplication::instance()->findChild<QItemSelectionModelSlots *>();

    if( s == NULL )
    {
      s = new QItemSelectionModelSlots();
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
