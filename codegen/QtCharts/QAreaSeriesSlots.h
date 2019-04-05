%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts

$header

$includes=5,7,0

using namespace QtCharts;

$beginSlotsClass
$signal=5,7,0|borderColorChanged( QColor color )
$signal=5,7,0|clicked( const QPointF & point )
$signal=5,7,0|colorChanged( QColor color )
$signal=5,7,0|doubleClicked( const QPointF & point )
$signal=5,7,0|hovered( const QPointF & point, bool state )
$signal=5,7,0|pointLabelsClippingChanged( bool clipping )
$signal=5,7,0|pointLabelsColorChanged( const QColor & color )
$signal=5,7,0|pointLabelsFontChanged( const QFont & font )
$signal=5,7,0|pointLabelsFormatChanged( const QString & format )
$signal=5,7,0|pointLabelsVisibilityChanged( bool visible )
$signal=5,7,0|pressed( const QPointF & point )
$signal=5,7,0|released( const QPointF & point )
$signal=5,7,0|selected()
$endSlotsClass
