%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QTcpServerSlots.h"

static SlotsQTcpServer * s = NULL;

SlotsQTcpServer::SlotsQTcpServer(QObject *parent) : QObject(parent)
{
}

SlotsQTcpServer::~SlotsQTcpServer()
{
}

void SlotsQTcpServer::newConnection ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "newConnection()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QTCPSERVER_ONNEWCONNECTION )
{
  if( s == NULL )
  {
    s = new SlotsQTcpServer(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "newConnection()", "newConnection()" ) );
}