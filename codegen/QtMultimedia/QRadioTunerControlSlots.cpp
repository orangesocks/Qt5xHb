%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass

void SlotsQRadioTunerControl::stateChanged(QRadioTuner::State state)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stateChanged(QRadioTuner::State)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstate = hb_itemPutNI( NULL, (int) state );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstate );
    hb_itemRelease( psender );
    hb_itemRelease( pstate );
  }
}

void SlotsQRadioTunerControl::bandChanged(QRadioTuner::Band band)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "bandChanged(QRadioTuner::Band)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pband = hb_itemPutNI( NULL, (int) band );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pband );
    hb_itemRelease( psender );
    hb_itemRelease( pband );
  }
}

void SlotsQRadioTunerControl::frequencyChanged(int frequency)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "frequencyChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfrequency = hb_itemPutNI( NULL, frequency );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pfrequency );
    hb_itemRelease( psender );
    hb_itemRelease( pfrequency );
  }
}

void SlotsQRadioTunerControl::stereoStatusChanged(bool stereo)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stereoStatusChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstereo = hb_itemPutL( NULL, stereo );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstereo );
    hb_itemRelease( psender );
    hb_itemRelease( pstereo );
  }
}

void SlotsQRadioTunerControl::searchingChanged(bool searching)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "searchingChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psearching = hb_itemPutL( NULL, searching );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psearching );
    hb_itemRelease( psender );
    hb_itemRelease( psearching );
  }
}

void SlotsQRadioTunerControl::signalStrengthChanged(int signalStrength)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "signalStrengthChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psignalStrength = hb_itemPutNI( NULL, signalStrength );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, psignalStrength );
    hb_itemRelease( psender );
    hb_itemRelease( psignalStrength );
  }
}

void SlotsQRadioTunerControl::volumeChanged(int volume)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "volumeChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvolume = hb_itemPutNI( NULL, volume );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvolume );
    hb_itemRelease( psender );
    hb_itemRelease( pvolume );
  }
}

void SlotsQRadioTunerControl::mutedChanged(bool muted)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "mutedChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmuted = hb_itemPutL( NULL, muted );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmuted );
    hb_itemRelease( psender );
    hb_itemRelease( pmuted );
  }
}

void SlotsQRadioTunerControl::error(QRadioTuner::Error err)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QRadioTuner::Error)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM perr = hb_itemPutNI( NULL, (int) err );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, perr );
    hb_itemRelease( psender );
    hb_itemRelease( perr );
  }
}

void SlotsQRadioTunerControl::stationFound(int frequency, QString stationId)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stationFound(int,QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pfrequency = hb_itemPutNI( NULL, frequency );
    PHB_ITEM pstationId = hb_itemPutC( NULL, (const char *) stationId.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pfrequency, pstationId );
    hb_itemRelease( psender );
    hb_itemRelease( pfrequency );
    hb_itemRelease( pstationId );
  }
}

void SlotsQRadioTunerControl::antennaConnectedChanged(bool connectionStatus)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "antennaConnectedChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pconnectionStatus = hb_itemPutL( NULL, connectionStatus );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pconnectionStatus );
    hb_itemRelease( psender );
    hb_itemRelease( pconnectionStatus );
  }
}

$signalMethod=|stateChanged(QRadioTuner::State)
$signalMethod=|bandChanged(QRadioTuner::Band)
$signalMethod=|frequencyChanged(int)
$signalMethod=|stereoStatusChanged(bool)
$signalMethod=|searchingChanged(bool)
$signalMethod=|signalStrengthChanged(int)
$signalMethod=|volumeChanged(int)
$signalMethod=|mutedChanged(bool)
$signalMethod=|error(QRadioTuner::Error)
$signalMethod=|stationFound(int,QString)
$signalMethod=|antennaConnectedChanged(bool)

$endSlotsClass
