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

$beginClassFrom=QObject,QMediaBindableInterface

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QRadioData(QMediaObject *mediaObject, QObject *parent = Q_NULLPTR)
$constructor=|new|QMediaObject *,QObject *=0

$prototype=~QRadioData()
$deleteMethod

%%
%% Q_PROPERTY(QString stationId READ stationId NOTIFY stationIdChanged)
%%

$prototype=QString stationId() const
$method=|QString|stationId|

%%
%% Q_PROPERTY(ProgramType programType READ programType NOTIFY programTypeChanged)
%%

$prototype=ProgramType programType() const
$method=|QRadioData::ProgramType|programType|

%%
%% Q_PROPERTY(QString programTypeName READ programTypeName NOTIFY programTypeNameChanged)
%%

$prototype=QString programTypeName() const
$method=|QString|programTypeName|

%%
%% Q_PROPERTY(QString stationName READ stationName NOTIFY stationNameChanged)
%%

$prototype=QString stationName() const
$method=|QString|stationName|

%%
%% Q_PROPERTY(QString radioText READ radioText NOTIFY radioTextChanged)
%%

$prototype=QString radioText() const
$method=|QString|radioText|

%%
%% Q_PROPERTY(bool alternativeFrequenciesEnabled READ isAlternativeFrequenciesEnabled WRITE setAlternativeFrequenciesEnabled NOTIFY alternativeFrequenciesEnabledChanged)
%%

$prototype=bool isAlternativeFrequenciesEnabled() const
$method=|bool|isAlternativeFrequenciesEnabled|

$prototype=void setAlternativeFrequenciesEnabled(bool enabled)
$slotMethod=|void|setAlternativeFrequenciesEnabled|bool

%%
%%
%%

$prototype=QMultimedia::AvailabilityStatus availability() const
$method=|QMultimedia::AvailabilityStatus|availability|

$prototype=QMediaObject *mediaObject() const override
$method=|QMediaObject *|mediaObject|

$prototype=Error error() const
$method=|QRadioData::Error|error|

$prototype=QString errorString() const
$method=|QString|errorString|

$prototype=bool setMediaObject(QMediaObject *) override [protected]

$beginSignals
$signal=|stationIdChanged(QString)
$signal=|programTypeChanged(QRadioData::ProgramType)
$signal=|programTypeNameChanged(QString)
$signal=|stationNameChanged(QString)
$signal=|radioTextChanged(QString)
$signal=|alternativeFrequenciesEnabledChanged(bool)
$signal=|error(QRadioData::Error)
$endSignals

#pragma ENDDUMP
