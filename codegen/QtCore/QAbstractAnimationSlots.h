%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQAbstractAnimation: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractAnimation(QObject *parent = 0);
  ~SlotsQAbstractAnimation();
  public slots:
  void currentLoopChanged ( int currentLoop );
  void directionChanged ( QAbstractAnimation::Direction newDirection );
  void finished ();
  void stateChanged ( QAbstractAnimation::State newState, QAbstractAnimation::State oldState );
};