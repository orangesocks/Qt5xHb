%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QRectF>
#include <QTransform>
#include <QLocale>

$prototype=QRectF cursorRectangle() const
$method=|QRectF|cursorRectangle|

$prototype=Qt::LayoutDirection inputDirection() const
$method=|Qt::LayoutDirection|inputDirection|

$prototype=QTransform inputItemTransform() const
$method=|QTransform|inputItemTransform|

$prototype=bool isAnimating() const
$method=|bool|isAnimating|

$prototype=bool isVisible() const
$method=|bool|isVisible|

$prototype=QRectF keyboardRectangle() const
$method=|QRectF|keyboardRectangle|

$prototype=QLocale locale() const
$method=|QLocale|locale|

$prototype=void setInputItemTransform(const QTransform & transform)
$method=|void|setInputItemTransform|const QTransform &

$prototype=void setVisible(bool visible)
$method=|void|setVisible|bool

$prototype=void commit()
$method=|void|commit|

$prototype=void hide()
$method=|void|hide|

$prototype=void invokeAction(Action a, int cursorPosition)
$method=|void|invokeAction|QInputMethod::Action,int

$prototype=void reset()
$method=|void|reset|

$prototype=void show()
$method=|void|show|

$prototype=void update(Qt::InputMethodQueries queries)
$method=|void|update|Qt::InputMethodQueries

$beginSignals
$signal=|animatingChanged()
$signal=|cursorRectangleChanged()
$signal=|inputDirectionChanged(Qt::LayoutDirection)
$signal=|keyboardRectangleChanged()
$signal=|localeChanged()
$signal=|visibleChanged()
$endSignals

#pragma ENDDUMP
