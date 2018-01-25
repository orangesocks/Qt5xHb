%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQOpenGLDebugLogger::messageLogged(const QOpenGLDebugMessage &debugMessage)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "messageLogged(QOpenGLDebugMessage)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pdebugMessage = hb_itemPutPtr( NULL, (QOpenGLDebugMessage *) &debugMessage );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pdebugMessage );
    hb_itemRelease( psender );
    hb_itemRelease( pdebugMessage );
  }
}

$signalMethod=|messageLogged(QOpenGLDebugMessage)

$endSlotsClass
