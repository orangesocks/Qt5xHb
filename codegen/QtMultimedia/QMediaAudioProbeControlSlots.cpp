%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "QMediaAudioProbeControlSlots.h"

static SlotsQMediaAudioProbeControl * s = NULL;

SlotsQMediaAudioProbeControl::SlotsQMediaAudioProbeControl(QObject *parent) : QObject(parent)
{
}

SlotsQMediaAudioProbeControl::~SlotsQMediaAudioProbeControl()
{
}

void SlotsQMediaAudioProbeControl::audioBufferProbed(const QAudioBuffer & buffer)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "audioBufferProbed(QAudioBuffer)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pbuffer = hb_itemPutPtr( NULL, (QAudioBuffer *) &buffer );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pbuffer );
    hb_itemRelease( psender );
    hb_itemRelease( pbuffer );
  }
}

void SlotsQMediaAudioProbeControl::flush()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "flush()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QMEDIAAUDIOPROBECONTROL_ONAUDIOBUFFERPROBED )
{
  if( s == NULL )
  {
    s = new SlotsQMediaAudioProbeControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "audioBufferProbed(QAudioBuffer)", "audioBufferProbed(QAudioBuffer)" ) );
}

HB_FUNC( QMEDIAAUDIOPROBECONTROL_ONFLUSH )
{
  if( s == NULL )
  {
    s = new SlotsQMediaAudioProbeControl(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "flush()", "flush()" ) );
}
