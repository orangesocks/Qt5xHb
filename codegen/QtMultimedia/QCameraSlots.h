%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQCamera: public QObject
{
  Q_OBJECT
  public:
  SlotsQCamera(QObject *parent = 0);
  ~SlotsQCamera();
  public slots:
  void captureModeChanged(QCamera::CaptureModes mode);
  void error(QCamera::Error value);
  void lockFailed();
  void lockStatusChanged(QCamera::LockStatus status, QCamera::LockChangeReason reason);
  void lockStatusChanged(QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason);
  void locked();
  void stateChanged(QCamera::State state);
  void statusChanged(QCamera::Status status);
};