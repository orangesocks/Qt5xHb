/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QItemSelectionModelSlots.h"

QItemSelectionModelSlots::QItemSelectionModelSlots(QObject *parent) : QObject(parent)
{
}

QItemSelectionModelSlots::~QItemSelectionModelSlots()
{
}
void QItemSelectionModelSlots::selectionChanged( const QItemSelection & selected, const QItemSelection & deselected )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectionChanged(QItemSelection,QItemSelection)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QITEMSELECTIONMODEL" );
    PHB_ITEM pselected = Signals_return_object( (void *) &selected, "QITEMSELECTION" );
    PHB_ITEM pdeselected = Signals_return_object( (void *) &deselected, "QITEMSELECTION" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pselected, pdeselected );
    hb_itemRelease( psender );
    hb_itemRelease( pselected );
    hb_itemRelease( pdeselected );
  }
}
void QItemSelectionModelSlots::currentChanged( const QModelIndex & current, const QModelIndex & previous )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentChanged(QModelIndex,QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QITEMSELECTIONMODEL" );
    PHB_ITEM pcurrent = Signals_return_object( (void *) &current, "QMODELINDEX" );
    PHB_ITEM pprevious = Signals_return_object( (void *) &previous, "QMODELINDEX" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}
void QItemSelectionModelSlots::currentRowChanged( const QModelIndex & current, const QModelIndex & previous )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentRowChanged(QModelIndex,QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QITEMSELECTIONMODEL" );
    PHB_ITEM pcurrent = Signals_return_object( (void *) &current, "QMODELINDEX" );
    PHB_ITEM pprevious = Signals_return_object( (void *) &previous, "QMODELINDEX" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}
void QItemSelectionModelSlots::currentColumnChanged( const QModelIndex & current, const QModelIndex & previous )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentColumnChanged(QModelIndex,QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QITEMSELECTIONMODEL" );
    PHB_ITEM pcurrent = Signals_return_object( (void *) &current, "QMODELINDEX" );
    PHB_ITEM pprevious = Signals_return_object( (void *) &previous, "QMODELINDEX" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

void QItemSelectionModelSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QItemSelectionModel * obj = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QItemSelectionModelSlots * s = QCoreApplication::instance()->findChild<QItemSelectionModelSlots *>();

    if( s == NULL )
    {
      s = new QItemSelectionModelSlots();
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
