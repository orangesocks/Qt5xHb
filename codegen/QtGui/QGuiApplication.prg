$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWINDOW
REQUEST QCLIPBOARD
REQUEST QOBJECT
REQUEST QFONT
REQUEST QINPUTMETHOD
REQUEST QCURSOR
REQUEST QPALETTE
REQUEST QPLATFORMNATIVEINTERFACE
REQUEST QSCREEN
REQUEST QSTYLEHINTS
#endif

CLASS QGuiApplication INHERIT QCoreApplication

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD notify
   METHOD allWindows
   METHOD applicationDisplayName
   METHOD changeOverrideCursor
   METHOD clipboard
   METHOD desktopSettingsAware
   METHOD exec
   METHOD focusObject
   METHOD focusWindow
   METHOD font
   METHOD inputMethod
   METHOD isLeftToRight
   METHOD isRightToLeft
   METHOD keyboardModifiers
   METHOD layoutDirection
   METHOD modalWindow
   METHOD mouseButtons
   METHOD overrideCursor
   METHOD palette
   METHOD platformName
   METHOD platformNativeInterface
   METHOD primaryScreen
   METHOD queryKeyboardModifiers
   METHOD quitOnLastWindowClosed
   METHOD restoreOverrideCursor
   METHOD screens
   METHOD setApplicationDisplayName
   METHOD setDesktopSettingsAware
   METHOD setFont
   METHOD setLayoutDirection
   METHOD setOverrideCursor
   METHOD setPalette
   METHOD setQuitOnLastWindowClosed
   METHOD styleHints
   METHOD topLevelAt
   METHOD topLevelWindows

   METHOD onFocusObjectChanged
   METHOD onFocusWindowChanged
   METHOD onFontDatabaseChanged
   METHOD onLastWindowClosed
   METHOD onScreenAdded

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QFont>
#include <QPalette>

/*
QGuiApplication(int & argc, char ** argv)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_NEW )
{
  int argc;
  char ** argv;
  argc = hb_cmdargARGC();
  argv = hb_cmdargARGV();
  QGuiApplication * o = NULL;
  o = new QGuiApplication( argc, argv );
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
virtual bool notify(QObject * object, QEvent * event)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_NOTIFY )
{
  QGuiApplication * obj = (QGuiApplication *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->notify ( PQOBJECT(1), PQEVENT(2) ) );
  }
}


/*
static QWindowList allWindows()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_ALLWINDOWS )
{
  QWindowList list = QGuiApplication::allWindows ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QWINDOW" );
  #else
  pDynSym = hb_dynsymFindName( "QWINDOW" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QWindow *) list[i] );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static QString applicationDisplayName()
*/
$staticMethod=|QString|applicationDisplayName|

/*
static void changeOverrideCursor(const QCursor & cursor)
*/
$staticMethod=|void|changeOverrideCursor|const QCursor &

/*
static QClipboard * clipboard()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_CLIPBOARD )
{
  QClipboard * ptr = QGuiApplication::clipboard ();
  _qt5xhb_createReturnClass ( ptr, "QCLIPBOARD" );
}

/*
static bool desktopSettingsAware()
*/
$staticMethod=|bool|desktopSettingsAware|

/*
static int exec()
*/
$staticMethod=|int|exec|

/*
static QObject * focusObject()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_FOCUSOBJECT )
{
  QObject * ptr = QGuiApplication::focusObject ();
  _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
}


/*
static QWindow * focusWindow()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_FOCUSWINDOW )
{
  QWindow * ptr = QGuiApplication::focusWindow ();
  _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
}


/*
static QFont font()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_FONT )
{
  QFont * ptr = new QFont( QGuiApplication::font () );
  _qt5xhb_createReturnClass ( ptr, "QFONT", true );
}


/*
static QInputMethod * inputMethod()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_INPUTMETHOD )
{
  QInputMethod * ptr = QGuiApplication::inputMethod ();
  _qt5xhb_createReturnClass ( ptr, "QINPUTMETHOD" );
}


/*
static bool isLeftToRight()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_ISLEFTTORIGHT )
{
  RBOOL( QGuiApplication::isLeftToRight () );
}


/*
static bool isRightToLeft()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_ISRIGHTTOLEFT )
{
  RBOOL( QGuiApplication::isRightToLeft () );
}


/*
static Qt::KeyboardModifiers keyboardModifiers()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_KEYBOARDMODIFIERS )
{
  hb_retni( QGuiApplication::keyboardModifiers () );
}


/*
static Qt::LayoutDirection layoutDirection()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_LAYOUTDIRECTION )
{
  hb_retni( QGuiApplication::layoutDirection () );
}


/*
static QWindow * modalWindow()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_MODALWINDOW )
{
  QWindow * ptr = QGuiApplication::modalWindow ();
  _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
}


/*
static Qt::MouseButtons mouseButtons()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_MOUSEBUTTONS )
{
  hb_retni( QGuiApplication::mouseButtons () );
}


/*
static QCursor * overrideCursor()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_OVERRIDECURSOR )
{
  QCursor * ptr = QGuiApplication::overrideCursor ();
  _qt5xhb_createReturnClass ( ptr, "QCURSOR" );
}


/*
static QPalette palette()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_PALETTE )
{
  QPalette * ptr = new QPalette( QGuiApplication::palette () );
  _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
}


/*
static QString platformName()
*/
$staticMethod=|QString|platformName|

/*
static QPlatformNativeInterface * platformNativeInterface()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_PLATFORMNATIVEINTERFACE )
{
  QPlatformNativeInterface * ptr = QGuiApplication::platformNativeInterface ();
  _qt5xhb_createReturnClass ( ptr, "QPLATFORMNATIVEINTERFACE" );
}


/*
static QScreen * primaryScreen()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_PRIMARYSCREEN )
{
  QScreen * ptr = QGuiApplication::primaryScreen ();
  _qt5xhb_createReturnClass ( ptr, "QSCREEN" );
}


/*
static Qt::KeyboardModifiers queryKeyboardModifiers()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_QUERYKEYBOARDMODIFIERS )
{
  hb_retni( QGuiApplication::queryKeyboardModifiers () );
}


/*
static bool quitOnLastWindowClosed()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_QUITONLASTWINDOWCLOSED )
{
  RBOOL( QGuiApplication::quitOnLastWindowClosed () );
}


/*
static void restoreOverrideCursor()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_RESTOREOVERRIDECURSOR )
{
  QGuiApplication::restoreOverrideCursor ();
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QList<QScreen *> screens()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SCREENS )
{
}


/*
static void setApplicationDisplayName(const QString & name)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETAPPLICATIONDISPLAYNAME )
{
  QGuiApplication::setApplicationDisplayName ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setDesktopSettingsAware(bool on)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETDESKTOPSETTINGSAWARE )
{
  QGuiApplication::setDesktopSettingsAware ( PBOOL(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setFont(const QFont & font)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETFONT )
{
  QGuiApplication::setFont ( *PQFONT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setLayoutDirection(Qt::LayoutDirection direction)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETLAYOUTDIRECTION )
{
  QGuiApplication::setLayoutDirection ( (Qt::LayoutDirection) hb_parni(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setOverrideCursor(const QCursor & cursor)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETOVERRIDECURSOR )
{
  QGuiApplication::setOverrideCursor ( *PQCURSOR(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setPalette(const QPalette & pal)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETPALETTE )
{
  QGuiApplication::setPalette ( *PQPALETTE(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void setQuitOnLastWindowClosed(bool quit)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_SETQUITONLASTWINDOWCLOSED )
{
  QGuiApplication::setQuitOnLastWindowClosed ( PBOOL(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QStyleHints * styleHints()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_STYLEHINTS )
{
  QStyleHints * ptr = QGuiApplication::styleHints ();
  _qt5xhb_createReturnClass ( ptr, "QSTYLEHINTS" );
}


/*
static QWindow * topLevelAt(const QPoint & pos)
*/
HB_FUNC_STATIC( QGUIAPPLICATION_TOPLEVELAT )
{
  QWindow * ptr = QGuiApplication::topLevelAt ( *PQPOINT(1) );
  _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
}


/*
static QWindowList topLevelWindows()
*/
HB_FUNC_STATIC( QGUIAPPLICATION_TOPLEVELWINDOWS )
{
  QWindowList list = QGuiApplication::topLevelWindows ();
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QWINDOW" );
  #else
  pDynSym = hb_dynsymFindName( "QWINDOW" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QWindow *) list[i] );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
      hb_itemRelease( pItem );
    }
  }
  hb_itemReturnRelease(pArray);
}





#pragma ENDDUMP
