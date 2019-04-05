%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests
$addRequest=QAccessibleEvent
$addRequest=QAccessibleStateChangeEvent
$addRequest=QAccessibleTableModelChangeEvent
$addRequest=QAccessibleTextCursorEvent
$addRequest=QAccessibleTextInsertEvent
$addRequest=QAccessibleTextRemoveEvent
$addRequest=QAccessibleTextSelectionEvent
$addRequest=QAccessibleTextUpdateEvent
$addRequest=QAccessibleValueChangeEvent
$addRequest=QActionEvent
$addRequest=QApplicationStateChangeEvent
$addRequest=QCloseEvent
$addRequest=QContextMenuEvent
$addRequest=QDragEnterEvent
$addRequest=QDragLeaveEvent
$addRequest=QDragMoveEvent
$addRequest=QDropEvent
$addRequest=QEnterEvent
$addRequest=QExposeEvent
$addRequest=QFileOpenEvent
$addRequest=QFocusEvent
$addRequest=QHelpEvent
$addRequest=QHideEvent
$addRequest=QHoverEvent
$addRequest=QIconDragEvent
$addRequest=QInputEvent
$addRequest=QInputMethodEvent
$addRequest=QInputMethodQueryEvent
$addRequest=QKeyEvent
$addRequest=QMouseEvent
$addRequest=QMoveEvent
$addRequest=QNativeGestureEvent
$addRequest=QPaintEvent
$addRequest=QResizeEvent
$addRequest=QScreenOrientationChangeEvent
$addRequest=QScrollEvent
$addRequest=QScrollPrepareEvent
$addRequest=QShortcutEvent
$addRequest=QShowEvent
$addRequest=QStatusTipEvent
$addRequest=QTabletEvent
$addRequest=QToolBarChangeEvent
$addRequest=QTouchEvent
$addRequest=QWhatsThisClickedEvent
$addRequest=QWheelEvent
$addRequest=QWindowStateChangeEvent

$beginClassFrom=QCoreApplication

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QFont>
#include <QtGui/QPalette>
#include <QtGui/QClipboard>
#include <QtGui/QWindow>
#include <QtGui/QScreen>
#include <QtGui/QStyleHints>

$prototype=QGuiApplication(int & argc, char ** argv)
HB_FUNC_STATIC( QGUIAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QGuiApplication * o = NULL;
  o = new QGuiApplication( argc, argv );
  _qt5xhb_returnNewObject( o, false );
}
$addMethod=new

$deleteMethod

$prototype=virtual bool notify(QObject * object, QEvent * event)
$virtualMethod=|bool|notify|QObject *,QEvent *

$prototype=static QWindowList allWindows()
$staticMethod=|QWindowList|allWindows|

$prototype=static QString applicationDisplayName()
$staticMethod=|QString|applicationDisplayName|

$prototype=static void changeOverrideCursor(const QCursor & cursor)
$staticMethod=|void|changeOverrideCursor|const QCursor &

$prototype=static QClipboard * clipboard()
$staticMethod=|QClipboard *|clipboard|

$prototype=static bool desktopSettingsAware()
$staticMethod=|bool|desktopSettingsAware|

$prototype=static int exec()
$staticMethod=|int|exec|

$prototype=static QObject * focusObject()
$staticMethod=|QObject *|focusObject|

$prototype=static QWindow * focusWindow()
$staticMethod=|QWindow *|focusWindow|

$prototype=static QFont font()
$staticMethod=|QFont|font|

$prototype=static QInputMethod * inputMethod()
$staticMethod=|QInputMethod *|inputMethod|

$prototype=static bool isLeftToRight()
$staticMethod=|bool|isLeftToRight|

$prototype=static bool isRightToLeft()
$staticMethod=|bool|isRightToLeft|

$prototype=static Qt::KeyboardModifiers keyboardModifiers()
$staticMethod=|Qt::KeyboardModifiers|keyboardModifiers|

$prototype=static Qt::LayoutDirection layoutDirection()
$staticMethod=|Qt::LayoutDirection|layoutDirection|

$prototype=static QWindow * modalWindow()
$staticMethod=|QWindow *|modalWindow|

$prototype=static Qt::MouseButtons mouseButtons()
$staticMethod=|Qt::MouseButtons|mouseButtons|

$prototype=static QCursor * overrideCursor()
$staticMethod=|QCursor *|overrideCursor|

$prototype=static QPalette palette()
$staticMethod=|QPalette|palette|

$prototype=static QString platformName()
$staticMethod=|QString|platformName|

$prototype=static QPlatformNativeInterface * platformNativeInterface()
%% TODO: implementar ?
%% $staticMethod=|QPlatformNativeInterface *|platformNativeInterface|

$prototype=static QScreen * primaryScreen()
$staticMethod=|QScreen *|primaryScreen|

$prototype=static Qt::KeyboardModifiers queryKeyboardModifiers()
$staticMethod=|Qt::KeyboardModifiers|queryKeyboardModifiers|

$prototype=static bool quitOnLastWindowClosed()
$staticMethod=|bool|quitOnLastWindowClosed|

$prototype=static void restoreOverrideCursor()
$staticMethod=|void|restoreOverrideCursor|

$prototype=static QList<QScreen *> screens()
$staticMethod=|QList<QScreen *>|screens|

$prototype=static void setApplicationDisplayName(const QString & name)
$staticMethod=|void|setApplicationDisplayName|const QString &

$prototype=static void setDesktopSettingsAware(bool on)
$staticMethod=|void|setDesktopSettingsAware|bool

$prototype=static void setFont(const QFont & font)
$staticMethod=|void|setFont|const QFont &

$prototype=static void setLayoutDirection(Qt::LayoutDirection direction)
$staticMethod=|void|setLayoutDirection|Qt::LayoutDirection

$prototype=static void setOverrideCursor(const QCursor & cursor)
$staticMethod=|void|setOverrideCursor|const QCursor &

$prototype=static void setPalette(const QPalette & pal)
$staticMethod=|void|setPalette|const QPalette &

$prototype=static void setQuitOnLastWindowClosed(bool quit)
$staticMethod=|void|setQuitOnLastWindowClosed|bool

$prototype=static QStyleHints * styleHints()
$staticMethod=|QStyleHints *|styleHints|

$prototype=static QWindow * topLevelAt(const QPoint & pos)
$staticMethod=|QWindow *|topLevelAt|const QPoint &

$prototype=static QWindowList topLevelWindows()
$staticMethod=|QWindowList|topLevelWindows|

$beginSignals
$signal=|focusObjectChanged(QObject*)
$signal=|focusWindowChanged(QWindow*)
$signal=|fontDatabaseChanged()
$signal=|lastWindowClosed()
$signal=|screenAdded(QScreen*)
$endSignals

#pragma ENDDUMP
