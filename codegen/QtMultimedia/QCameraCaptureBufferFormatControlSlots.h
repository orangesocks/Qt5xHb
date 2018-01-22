%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQCameraCaptureBufferFormatControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQCameraCaptureBufferFormatControl(QObject *parent = 0);
  ~SlotsQCameraCaptureBufferFormatControl();
  public slots:
  void bufferFormatChanged(QVideoFrame::PixelFormat format);
};
