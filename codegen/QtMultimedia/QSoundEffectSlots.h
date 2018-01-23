%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQSoundEffect: public QObject
{
  Q_OBJECT
  public:
  SlotsQSoundEffect(QObject *parent = 0);
  ~SlotsQSoundEffect();
  public slots:
  void sourceChanged();
  void loopCountChanged();
  void loopsRemainingChanged();
  void volumeChanged();
  void mutedChanged();
  void loadedChanged();
  void playingChanged();
  void statusChanged();
  void categoryChanged();
};