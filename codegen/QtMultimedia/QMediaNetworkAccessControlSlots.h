%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQMediaNetworkAccessControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaNetworkAccessControl(QObject *parent = 0);
  ~SlotsQMediaNetworkAccessControl();
  public slots:
  void configurationChanged(const QNetworkConfiguration & configuration);
};
