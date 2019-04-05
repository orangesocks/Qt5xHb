%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimedia

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QMediaControl

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QAudioDecoderControl(QObject *parent = Q_NULLPTR) [protected]

$prototype=~QAudioDecoderControl()
$deleteMethod

$prototype=virtual QAudioFormat audioFormat() const = 0
$virtualMethod=|QAudioFormat|audioFormat|

$prototype=virtual bool bufferAvailable() const = 0
$virtualMethod=|bool|bufferAvailable|

$prototype=virtual qint64 duration() const = 0
$virtualMethod=|qint64|duration|

$prototype=virtual qint64 position() const = 0
$virtualMethod=|qint64|position|

$prototype=virtual QAudioBuffer read() = 0
$virtualMethod=|QAudioBuffer|read|

$prototype=virtual void setAudioFormat(const QAudioFormat & format) = 0
$virtualMethod=|void|setAudioFormat|const QAudioFormat &

$prototype=virtual QIODevice * sourceDevice() const = 0
$virtualMethod=|QIODevice *|sourceDevice|

$prototype=virtual void setSourceDevice(QIODevice * device) = 0
$virtualMethod=|void|setSourceDevice|QIODevice *

$prototype=virtual void setSourceFilename(const QString & fileName) = 0
$virtualMethod=|void|setSourceFilename|const QString &

$prototype=virtual QString sourceFilename() const = 0
$virtualMethod=|QString|sourceFilename|

$prototype=virtual void start() = 0
$virtualMethod=|void|start|

$prototype=virtual QAudioDecoder::State state() const = 0
$virtualMethod=|QAudioDecoder::State|state|

$prototype=virtual void stop() = 0
$virtualMethod=|void|stop|

$beginSignals
$signal=|bufferAvailableChanged(bool)
$signal=|bufferReady()
$signal=|durationChanged(qint64)
$signal=|error(int,QString)
$signal=|finished()
$signal=|formatChanged(QAudioFormat)
$signal=|positionChanged(qint64)
$signal=|sourceChanged()
$signal=|stateChanged(QAudioDecoder::State)
$endSignals

#pragma ENDDUMP
