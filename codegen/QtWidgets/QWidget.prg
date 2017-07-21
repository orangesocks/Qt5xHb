$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QSIZE
REQUEST QRECT
REQUEST QREGION
REQUEST QMARGINS
REQUEST QCURSOR
REQUEST QFONT
REQUEST QFONTINFO
REQUEST QFONTMETRICS
REQUEST QGRAPHICSEFFECT
REQUEST QGRAPHICSPROXYWIDGET
REQUEST QVARIANT
REQUEST QLAYOUT
REQUEST QLOCALE
REQUEST QPOINT
REQUEST QPALETTE
REQUEST QBYTEARRAY
REQUEST QSIZEPOLICY
REQUEST QSTYLE
REQUEST QICON
REQUEST QPAINTENGINE
REQUEST QPIXMAP
REQUEST QBACKINGSTORE
REQUEST QWINDOW
#endif

CLASS QWidget INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD acceptDrops
   METHOD setAcceptDrops
   METHOD accessibleDescription
   METHOD setAccessibleDescription
   METHOD accessibleName
   METHOD setAccessibleName
   METHOD actions
   METHOD activateWindow
   METHOD addAction
   METHOD addActions
   METHOD adjustSize
   METHOD autoFillBackground
   METHOD setAutoFillBackground
   METHOD backgroundRole
   METHOD setBackgroundRole
   METHOD baseSize
   METHOD setBaseSize
   METHOD childAt
   METHOD childrenRect
   METHOD childrenRegion
   METHOD clearFocus
   METHOD clearMask
   METHOD contentsMargins
   METHOD contentsRect
   METHOD contextMenuPolicy
   METHOD setContextMenuPolicy
   METHOD cursor
   METHOD setCursor
   METHOD unsetCursor
   METHOD effectiveWinId
   METHOD ensurePolished
   METHOD focusPolicy
   METHOD setFocusPolicy
   METHOD focusProxy
   METHOD focusWidget
   METHOD font
   METHOD setFont
   METHOD fontInfo
   METHOD fontMetrics
   METHOD foregroundRole
   METHOD setForegroundRole
   METHOD frameGeometry
   METHOD frameSize
   METHOD getContentsMargins
   METHOD grabGesture
   METHOD grabKeyboard
   METHOD grabMouse
   METHOD grabShortcut
   METHOD graphicsEffect
   METHOD setGraphicsEffect
   METHOD graphicsProxyWidget
   METHOD hasEditFocus
   METHOD hasFocus
   METHOD hasMouseTracking
   METHOD setMouseTracking
   METHOD height
   METHOD heightForWidth
   METHOD inputMethodHints
   METHOD setInputMethodHints
   METHOD inputMethodQuery
   METHOD insertAction
   METHOD insertActions
   METHOD isActiveWindow
   METHOD isAncestorOf
   METHOD isEnabledTo
   METHOD isFullScreen
   METHOD isHidden
   METHOD isMaximized
   METHOD isMinimized
   METHOD isModal
   METHOD isVisible
   METHOD setVisible
   METHOD isVisibleTo
   METHOD isWindow
   METHOD isWindowModified
   METHOD setWindowModified
   METHOD layout
   METHOD layoutDirection
   METHOD setLayoutDirection
   METHOD unsetLayoutDirection
   METHOD locale
   METHOD setLocale
   METHOD unsetLocale
   METHOD mapFrom
   METHOD mapFromGlobal
   METHOD mapFromParent
   METHOD mapTo
   METHOD mapToGlobal
   METHOD mapToParent
   METHOD mask
   METHOD setMask
   METHOD maximumHeight
   METHOD setMaximumHeight
   METHOD maximumWidth
   METHOD setMaximumWidth
   METHOD minimumHeight
   METHOD setMinimumHeight
   METHOD minimumSizeHint
   METHOD minimumWidth
   METHOD setMinimumWidth
   METHOD pos
   METHOD move
   METHOD nativeParentWidget
   METHOD nextInFocusChain
   METHOD normalGeometry
   METHOD overrideWindowFlags
   METHOD palette
   METHOD setPalette
   METHOD parentWidget
   METHOD previousInFocusChain
   METHOD rect
   METHOD releaseKeyboard
   METHOD releaseMouse
   METHOD releaseShortcut
   METHOD removeAction
   METHOD render1
   METHOD render2
   METHOD render
   METHOD repaint
   METHOD resize
   METHOD restoreGeometry
   METHOD saveGeometry
   METHOD scroll
   METHOD setAttribute
   METHOD setContentsMargins
   METHOD setEditFocus
   METHOD setFixedHeight
   METHOD setFixedSize
   METHOD setFixedWidth
   METHOD setFocus
   METHOD setFocusProxy
   METHOD geometry
   METHOD setGeometry
   METHOD setLayout
   METHOD maximumSize
   METHOD setMaximumSize
   METHOD minimumSize
   METHOD setMinimumSize
   METHOD setParent
   METHOD setShortcutAutoRepeat
   METHOD setShortcutEnabled
   METHOD sizeIncrement
   METHOD setSizeIncrement
   METHOD sizePolicy
   METHOD setSizePolicy
   METHOD toolTipDuration
   METHOD setToolTipDuration
   METHOD windowModality
   METHOD setWindowModality
   METHOD setWindowRole
   METHOD setWindowState
   METHOD size
   METHOD sizeHint
   METHOD stackUnder
   METHOD statusTip
   METHOD setStatusTip
   METHOD style
   METHOD setStyle
   METHOD styleSheet
   METHOD setStyleSheet
   METHOD testAttribute
   METHOD toolTip
   METHOD setToolTip
   METHOD underMouse
   METHOD ungrabGesture
   METHOD update
   METHOD updateGeometry
   METHOD updatesEnabled
   METHOD setUpdatesEnabled
   METHOD visibleRegion
   METHOD whatsThis
   METHOD setWhatsThis
   METHOD width
   METHOD winId
   METHOD internalWinId
   METHOD window
   METHOD windowFilePath
   METHOD setWindowFilePath
   METHOD windowFlags
   METHOD setWindowFlags
   METHOD windowIcon
   METHOD setWindowIcon
   METHOD windowIconText
   METHOD setWindowIconText
   METHOD windowOpacity
   METHOD setWindowOpacity
   METHOD windowRole
   METHOD windowState
   METHOD windowTitle
   METHOD setWindowTitle
   METHOD windowType
   METHOD x
   METHOD y
   METHOD paintEngine
   METHOD close
   METHOD hide
   METHOD lower
   METHOD raise
   METHOD setDisabled
   METHOD isEnabled
   METHOD setEnabled
   METHOD setHidden
   METHOD show
   METHOD showFullScreen
   METHOD showMaximized
   METHOD showMinimized
   METHOD showNormal
   METHOD devType
   METHOD isTopLevel
   METHOD isEnabledToTLW
   METHOD topLevelWidget
   METHOD grab
   METHOD isRightToLeft
   METHOD isLeftToRight
   METHOD overrideWindowState
   METHOD backingStore
   METHOD windowHandle
   METHOD hasHeightForWidth
   METHOD colorCount
   METHOD depth
   METHOD heightMM
   METHOD logicalDpiX
   METHOD logicalDpiY
   METHOD paintingActive
   METHOD physicalDpiX
   METHOD physicalDpiY
   METHOD widthMM
   METHOD find
   METHOD keyboardGrabber
   METHOD mouseGrabber
   METHOD setTabOrder
   METHOD createWindowContainer

   METHOD onWindowTitleChanged
   METHOD onWindowIconChanged
   METHOD onWindowIconTextChanged // TODO: verificar se ainda � valido no Qt 5
   METHOD onCustomContextMenuRequested

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QIcon>
#include <QVariant>
#include <QLocale>

/*
explicit QWidget ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QWIDGET_NEW )
{
  if( ISBETWEEN(0,2) && ISOPTQWIDGET(1) && ISOPTNUM(2) )
  {
    int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
    QWidget * o = new QWidget ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool acceptDrops () const
*/
$method=|bool|acceptDrops|

/*
void setAcceptDrops ( bool on )
*/
$method=|void|setAcceptDrops|bool

/*
QString accessibleDescription () const
*/
HB_FUNC_STATIC( QWIDGET_ACCESSIBLEDESCRIPTION )
{
#ifndef QT_NO_ACCESSIBILITY
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->accessibleDescription () );
  }
#endif
}

/*
void setAccessibleDescription ( const QString & description )
*/
HB_FUNC_STATIC( QWIDGET_SETACCESSIBLEDESCRIPTION )
{
#ifndef QT_NO_ACCESSIBILITY
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setAccessibleDescription ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString accessibleName () const
*/
HB_FUNC_STATIC( QWIDGET_ACCESSIBLENAME )
{
#ifndef QT_NO_ACCESSIBILITY
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->accessibleName () );
  }
#endif
}

/*
void setAccessibleName ( const QString & name )
*/
HB_FUNC_STATIC( QWIDGET_SETACCESSIBLENAME )
{
#ifndef QT_NO_ACCESSIBILITY
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setAccessibleName ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QList<QAction *> actions () const
*/
HB_FUNC_STATIC( QWIDGET_ACTIONS )
{
#ifndef QT_NO_ACTION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QList<QAction *> list = obj->actions ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QACTION" );
    #else
    pDynSym = hb_dynsymFindName( "QACTION" );
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
        hb_itemPutPtr( pItem, (QAction *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
#endif
}

/*
void activateWindow ()
*/
$method=|void|activateWindow|

/*
void addAction ( QAction * action )
*/
HB_FUNC_STATIC( QWIDGET_ADDACTION )
{
#ifndef QT_NO_ACTION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) )
    {
      obj->addAction ( PQACTION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void addActions ( QList<QAction *> actions )
*/
HB_FUNC_STATIC( QWIDGET_ADDACTIONS )
{
#ifndef QT_NO_ACTION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISARRAY(1) )
    {
      QList<QAction *> par1;
      PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
      int i1;
      int nLen1 = hb_arrayLen(aList1);
      for (i1=0;i1<nLen1;i1++)
      {
        par1 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
      }
      obj->addActions ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void adjustSize ()
*/
$method=|void|adjustSize|

/*
bool autoFillBackground () const
*/
$method=|bool|autoFillBackground|

/*
void setAutoFillBackground ( bool enabled )
*/
$method=|void|setAutoFillBackground|bool

/*
QPalette::ColorRole backgroundRole () const
*/
HB_FUNC_STATIC( QWIDGET_BACKGROUNDROLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->backgroundRole () );
  }
}

/*
void setBackgroundRole ( QPalette::ColorRole role )
*/
HB_FUNC_STATIC( QWIDGET_SETBACKGROUNDROLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setBackgroundRole ( (QPalette::ColorRole) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize baseSize () const
*/
HB_FUNC_STATIC( QWIDGET_BASESIZE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->baseSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setBaseSize ( const QSize & )
*/
void QWidget_setBaseSize1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setBaseSize ( *PQSIZE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBaseSize ( int basew, int baseh )
*/
void QWidget_setBaseSize2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setBaseSize ( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setBaseSize ( const QSize & )
//[2]void setBaseSize ( int basew, int baseh )

HB_FUNC_STATIC( QWIDGET_SETBASESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setBaseSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setBaseSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWidget * childAt ( int x, int y ) const
*/
void QWidget_childAt1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->childAt ( PINT(1), PINT(2) );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * childAt ( const QPoint & p ) const
*/
void QWidget_childAt2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->childAt ( *PQPOINT(1) );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

//[1]QWidget * childAt ( int x, int y ) const
//[2]QWidget * childAt ( const QPoint & p ) const

HB_FUNC_STATIC( QWIDGET_CHILDAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_childAt1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QWidget_childAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRect childrenRect () const
*/
HB_FUNC_STATIC( QWIDGET_CHILDRENRECT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->childrenRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRegion childrenRegion () const
*/
HB_FUNC_STATIC( QWIDGET_CHILDRENREGION )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * ptr = new QRegion( obj->childrenRegion () );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
void clearFocus ()
*/
$method=|void|clearFocus|

/*
void clearMask ()
*/
$method=|void|clearMask|

/*
QMargins contentsMargins () const
*/
HB_FUNC_STATIC( QWIDGET_CONTENTSMARGINS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMargins * ptr = new QMargins( obj->contentsMargins () );
    _qt5xhb_createReturnClass ( ptr, "QMARGINS", true );
  }
}

/*
QRect contentsRect () const
*/
HB_FUNC_STATIC( QWIDGET_CONTENTSRECT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->contentsRect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
Qt::ContextMenuPolicy contextMenuPolicy () const
*/
HB_FUNC_STATIC( QWIDGET_CONTEXTMENUPOLICY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->contextMenuPolicy () );
  }
}

/*
void setContextMenuPolicy ( Qt::ContextMenuPolicy policy )
*/
HB_FUNC_STATIC( QWIDGET_SETCONTEXTMENUPOLICY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setContextMenuPolicy ( (Qt::ContextMenuPolicy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QCursor cursor () const
*/
HB_FUNC_STATIC( QWIDGET_CURSOR )
{
#ifndef QT_NO_CURSOR
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QCursor * ptr = new QCursor( obj->cursor () );
    _qt5xhb_createReturnClass ( ptr, "QCURSOR", true );
  }
#endif
}

/*
void setCursor ( const QCursor & )
*/
HB_FUNC_STATIC( QWIDGET_SETCURSOR )
{
#ifndef QT_NO_CURSOR
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQCURSOR(1) )
    {
      obj->setCursor ( *PQCURSOR(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void unsetCursor ()
*/
HB_FUNC_STATIC( QWIDGET_UNSETCURSOR )
{
#ifndef QT_NO_CURSOR
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->unsetCursor ();
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
WId effectiveWinId () const
*/
HB_FUNC_STATIC( QWIDGET_EFFECTIVEWINID )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    WId r = obj->effectiveWinId ();
    hb_retptr( (void*) r );
  }
}

/*
void ensurePolished () const
*/
$method=|void|ensurePolished|

/*
Qt::FocusPolicy focusPolicy () const
*/
HB_FUNC_STATIC( QWIDGET_FOCUSPOLICY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->focusPolicy () );
  }
}

/*
void setFocusPolicy ( Qt::FocusPolicy policy )
*/
HB_FUNC_STATIC( QWIDGET_SETFOCUSPOLICY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setFocusPolicy ( (Qt::FocusPolicy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QWidget * focusProxy () const
*/
HB_FUNC_STATIC( QWIDGET_FOCUSPROXY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->focusProxy ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * focusWidget () const
*/
HB_FUNC_STATIC( QWIDGET_FOCUSWIDGET )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->focusWidget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
const QFont & font () const
*/
HB_FUNC_STATIC( QWIDGET_FONT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QFont * ptr = &obj->font ();
    _qt5xhb_createReturnClass ( ptr, "QFONT" );
  }
}

/*
void setFont ( const QFont & )
*/
$method=|void|setFont|const QFont &

/*
QFontInfo fontInfo () const
*/
HB_FUNC_STATIC( QWIDGET_FONTINFO )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFontInfo * ptr = new QFontInfo( obj->fontInfo () );
    _qt5xhb_createReturnClass ( ptr, "QFONTINFO", true );
  }
}

/*
QFontMetrics fontMetrics () const
*/
HB_FUNC_STATIC( QWIDGET_FONTMETRICS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QFontMetrics * ptr = new QFontMetrics( obj->fontMetrics () );
    _qt5xhb_createReturnClass ( ptr, "QFONTMETRICS", true );
  }
}

/*
QPalette::ColorRole foregroundRole () const
*/
HB_FUNC_STATIC( QWIDGET_FOREGROUNDROLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->foregroundRole () );
  }
}

/*
void setForegroundRole ( QPalette::ColorRole role )
*/
HB_FUNC_STATIC( QWIDGET_SETFOREGROUNDROLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setForegroundRole ( (QPalette::ColorRole) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QRect frameGeometry () const
*/
HB_FUNC_STATIC( QWIDGET_FRAMEGEOMETRY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->frameGeometry () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QSize frameSize () const
*/
HB_FUNC_STATIC( QWIDGET_FRAMESIZE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->frameSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void getContentsMargins ( int * left, int * top, int * right, int * bottom ) const
*/
HB_FUNC_STATIC( QWIDGET_GETCONTENTSMARGINS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
    {
      int par1;
      int par2;
      int par3;
      int par4;
      obj->getContentsMargins ( &par1, &par2, &par3, &par4 );
      hb_storni( par1, 1 );
      hb_storni( par2, 2 );
      hb_storni( par3, 3 );
      hb_storni( par4, 4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
*/
HB_FUNC_STATIC( QWIDGET_GRABGESTURE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::GestureFlags() : hb_parni(2);
      obj->grabGesture ( (Qt::GestureType) hb_parni(1), (Qt::GestureFlags) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void grabKeyboard ()
*/
$method=|void|grabKeyboard|

/*
void grabMouse ()
*/
void QWidget_grabMouse1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->grabMouse ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void grabMouse ( const QCursor & cursor )
*/
void QWidget_grabMouse2 ()
{
#ifndef QT_NO_CURSOR
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->grabMouse ( *PQCURSOR(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

//[1]void grabMouse ()
//[2]void grabMouse ( const QCursor & cursor )

HB_FUNC_STATIC( QWIDGET_GRABMOUSE )
{
  if( ISNUMPAR(0) )
  {
    QWidget_grabMouse1();
  }
  else if( ISNUMPAR(1) && ISQCURSOR(1) )
  {
    QWidget_grabMouse2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int grabShortcut ( const QKeySequence & key, Qt::ShortcutContext context = Qt::WindowShortcut )
*/
HB_FUNC_STATIC( QWIDGET_GRABSHORTCUT )
{
#ifndef QT_NO_SHORTCUT
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQKEYSEQUENCE(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) Qt::WindowShortcut : hb_parni(2);
      RINT( obj->grabShortcut ( *PQKEYSEQUENCE(1), (Qt::ShortcutContext) par2 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
#endif
}

/*
QGraphicsEffect * graphicsEffect () const
*/
HB_FUNC_STATIC( QWIDGET_GRAPHICSEFFECT )
{
#ifndef QT_NO_GRAPHICSEFFECT
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsEffect * ptr = obj->graphicsEffect ();
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSEFFECT" );
  }
#endif
}

/*
void setGraphicsEffect ( QGraphicsEffect * effect )
*/
HB_FUNC_STATIC( QWIDGET_SETGRAPHICSEFFECT )
{
#ifndef QT_NO_GRAPHICSEFFECT
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQGRAPHICSEFFECT(1) )
    {
      obj->setGraphicsEffect ( PQGRAPHICSEFFECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QGraphicsProxyWidget * graphicsProxyWidget () const
*/
HB_FUNC_STATIC( QWIDGET_GRAPHICSPROXYWIDGET )
{
#ifndef QT_NO_GRAPHICSVIEW
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QGraphicsProxyWidget * ptr = obj->graphicsProxyWidget ();
    _qt5xhb_createReturnClass ( ptr, "QGRAPHICSPROXYWIDGET" );
  }
#endif
}

/*
bool hasEditFocus () const
*/
HB_FUNC_STATIC( QWIDGET_HASEDITFOCUS )
{
#ifdef QT_KEYPAD_NAVIGATION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->hasEditFocus () );
  }
#endif
}

/*
bool hasFocus () const
*/
$method=|bool|hasFocus|

/*
bool hasMouseTracking () const
*/
$method=|bool|hasMouseTracking|

/*
void setMouseTracking ( bool enable )
*/
$method=|void|setMouseTracking|bool

/*
int height () const
*/
$method=|int|height|

/*
virtual int heightForWidth ( int w ) const
*/
$method=|int|heightForWidth|int

/*
Qt::InputMethodHints inputMethodHints () const
*/
HB_FUNC_STATIC( QWIDGET_INPUTMETHODHINTS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->inputMethodHints () );
  }
}

/*
void setInputMethodHints ( Qt::InputMethodHints hints )
*/
HB_FUNC_STATIC( QWIDGET_SETINPUTMETHODHINTS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setInputMethodHints ( (Qt::InputMethodHints) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
HB_FUNC_STATIC( QWIDGET_INPUTMETHODQUERY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QVariant * ptr = new QVariant( obj->inputMethodQuery ( (Qt::InputMethodQuery) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void insertAction ( QAction * before, QAction * action )
*/
HB_FUNC_STATIC( QWIDGET_INSERTACTION )
{
#ifndef QT_NO_ACTION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) && ISQACTION(2) )
    {
      obj->insertAction ( PQACTION(1), PQACTION(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void insertActions ( QAction * before, QList<QAction *> actions )
*/
HB_FUNC_STATIC( QWIDGET_INSERTACTIONS )
{
#ifndef QT_NO_ACTION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) && ISARRAY(2) )
    {
      QList<QAction *> par2;
      PHB_ITEM aList2 = hb_param(2, HB_IT_ARRAY);
      int i2;
      int nLen2 = hb_arrayLen(aList2);
      for (i2=0;i2<nLen2;i2++)
      {
        par2 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList2, i2+1 ), "POINTER", 0 ) );
      }
      obj->insertActions ( PQACTION(1), par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool isActiveWindow () const
*/
$method=|bool|isActiveWindow|

/*
bool isAncestorOf ( const QWidget * child ) const
*/
HB_FUNC_STATIC( QWIDGET_ISANCESTOROF )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      const QWidget * par1 = (const QWidget *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->isAncestorOf ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isEnabledTo ( const QWidget * ancestor ) const
*/
HB_FUNC_STATIC( QWIDGET_ISENABLEDTO )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      const QWidget * par1 = (const QWidget *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->isEnabledTo ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isFullScreen () const
*/
$method=|bool|isFullScreen|

/*
bool isHidden () const
*/
$method=|bool|isHidden|

/*
bool isMaximized () const
*/
$method=|bool|isMaximized|

/*
bool isMinimized () const
*/
$method=|bool|isMinimized|

/*
bool isModal () const
*/
$method=|bool|isModal|

/*
bool isVisible () const
*/
$method=|bool|isVisible|

/*
virtual void setVisible ( bool visible )
*/
$method=|void|setVisible|bool

/*
bool isVisibleTo ( const QWidget * ancestor ) const
*/
HB_FUNC_STATIC( QWIDGET_ISVISIBLETO )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) )
    {
      const QWidget * par1 = (const QWidget *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->isVisibleTo ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isWindow () const
*/
$method=|bool|isWindow|

/*
bool isWindowModified () const
*/
$method=|bool|isWindowModified|

/*
void setWindowModified ( bool )
*/
$method=|void|setWindowModified|bool

/*
QLayout * layout () const
*/
HB_FUNC_STATIC( QWIDGET_LAYOUT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLayout * ptr = obj->layout ();
    _qt5xhb_createReturnClass ( ptr, "QLAYOUT" );
  }
}

/*
Qt::LayoutDirection layoutDirection () const
*/
HB_FUNC_STATIC( QWIDGET_LAYOUTDIRECTION )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->layoutDirection () );
  }
}

/*
void setLayoutDirection ( Qt::LayoutDirection direction )
*/
HB_FUNC_STATIC( QWIDGET_SETLAYOUTDIRECTION )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setLayoutDirection ( (Qt::LayoutDirection) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void unsetLayoutDirection ()
*/
$method=|void|unsetLayoutDirection|

/*
QLocale locale () const
*/
HB_FUNC_STATIC( QWIDGET_LOCALE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale () );
    _qt5xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}

/*
void setLocale ( const QLocale & locale )
*/
$method=|void|setLocale|const QLocale &

/*
void unsetLocale ()
*/
$method=|void|unsetLocale|

/*
QPoint mapFrom ( QWidget * parent, const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPFROM )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) && ISQPOINT(2) )
    {
      QPoint * ptr = new QPoint( obj->mapFrom ( PQWIDGET(1), *PQPOINT(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPoint mapFromGlobal ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPFROMGLOBAL )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * ptr = new QPoint( obj->mapFromGlobal ( *PQPOINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPoint mapFromParent ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPFROMPARENT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * ptr = new QPoint( obj->mapFromParent ( *PQPOINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPoint mapTo ( QWidget * parent, const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPTO )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQWIDGET(1) && ISQPOINT(2) )
    {
      QPoint * ptr = new QPoint( obj->mapTo ( PQWIDGET(1), *PQPOINT(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPoint mapToGlobal ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPTOGLOBAL )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * ptr = new QPoint( obj->mapToGlobal ( *PQPOINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPoint mapToParent ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QWIDGET_MAPTOPARENT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QPoint * ptr = new QPoint( obj->mapToParent ( *PQPOINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRegion mask () const
*/
HB_FUNC_STATIC( QWIDGET_MASK )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * ptr = new QRegion( obj->mask () );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
void setMask ( const QBitmap & bitmap )
*/
void QWidget_setMask1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMask ( *PQBITMAP(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMask ( const QRegion & region )
*/
void QWidget_setMask2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMask ( *PQREGION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setMask ( const QBitmap & bitmap )
//[2]void setMask ( const QRegion & region )

HB_FUNC_STATIC( QWIDGET_SETMASK )
{
  if( ISNUMPAR(1) && ISQBITMAP(1) )
  {
    QWidget_setMask1();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QWidget_setMask2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int maximumHeight () const
*/
$method=|int|maximumHeight|

/*
void setMaximumHeight ( int maxh )
*/
$method=|void|setMaximumHeight|int

/*
int maximumWidth () const
*/
$method=|int|maximumWidth|

/*
void setMaximumWidth ( int maxw )
*/
$method=|void|setMaximumWidth|int

/*
int minimumHeight () const
*/
$method=|int|minimumHeight|

/*
void setMinimumHeight ( int minh )
*/
$method=|void|setMinimumHeight|int

/*
virtual QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QWIDGET_MINIMUMSIZEHINT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
int minimumWidth () const
*/
$method=|int|minimumWidth|

/*
void setMinimumWidth ( int minw )
*/
$method=|void|setMinimumWidth|int

/*
QPoint pos () const
*/
HB_FUNC_STATIC( QWIDGET_POS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->pos () );
    _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
  }

}

/*
void move ( const QPoint & )
*/
void QWidget_move1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->move ( *PQPOINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void move ( int x, int y )
*/
void QWidget_move2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->move ( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void move ( const QPoint & )
//[2]void move ( int x, int y )

HB_FUNC_STATIC( QWIDGET_MOVE )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QWidget_move1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_move2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QWidget * nativeParentWidget () const
*/
HB_FUNC_STATIC( QWIDGET_NATIVEPARENTWIDGET )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->nativeParentWidget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * nextInFocusChain () const
*/
HB_FUNC_STATIC( QWIDGET_NEXTINFOCUSCHAIN )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->nextInFocusChain ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QRect normalGeometry () const
*/
HB_FUNC_STATIC( QWIDGET_NORMALGEOMETRY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->normalGeometry () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
void overrideWindowFlags ( Qt::WindowFlags flags )
*/
HB_FUNC_STATIC( QWIDGET_OVERRIDEWINDOWFLAGS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->overrideWindowFlags ( (Qt::WindowFlags) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QPalette & palette () const
*/
HB_FUNC_STATIC( QWIDGET_PALETTE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QPalette * ptr = &obj->palette ();
    _qt5xhb_createReturnClass ( ptr, "QPALETTE" );
  }
}

/*
void setPalette ( const QPalette & )
*/
$method=|void|setPalette|const QPalette &

/*
QWidget * parentWidget () const
*/
HB_FUNC_STATIC( QWIDGET_PARENTWIDGET )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->parentWidget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QWidget * previousInFocusChain () const
*/
HB_FUNC_STATIC( QWIDGET_PREVIOUSINFOCUSCHAIN )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->previousInFocusChain ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QRect rect () const
*/
HB_FUNC_STATIC( QWIDGET_RECT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRect * ptr = new QRect( obj->rect () );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
void releaseKeyboard ()
*/
$method=|void|releaseKeyboard|

/*
void releaseMouse ()
*/
$method=|void|releaseMouse|

/*
void releaseShortcut ( int id )
*/
HB_FUNC_STATIC( QWIDGET_RELEASESHORTCUT )
{
#ifndef QT_NO_SHORTCUT
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->releaseShortcut ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void removeAction ( QAction * action )
*/
HB_FUNC_STATIC( QWIDGET_REMOVEACTION )
{
#ifndef QT_NO_ACTION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) )
    {
      obj->removeAction ( PQACTION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void render (QPaintDevice *target, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))
*/
HB_FUNC_STATIC( QWIDGET_RENDER1 )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint par2 = ISNIL(2)? QPoint() : *(QPoint *) _qt5xhb_itemGetPtr(2);
    QRegion par3 = ISNIL(3)? QRegion() : *(QRegion *) _qt5xhb_itemGetPtr(3);
    int par4 = ISNIL(4)? (int) QWidget::DrawWindowBackground | QWidget::DrawChildren : hb_parni(4);
    obj->render ( PQPAINTDEVICE(1), par2, par3, (QWidget::RenderFlags) par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void render (QPainter *painter, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))
*/
HB_FUNC_STATIC( QWIDGET_RENDER2 )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPoint par2 = ISNIL(2)? QPoint() : *(QPoint *) _qt5xhb_itemGetPtr(2);
    QRegion par3 = ISNIL(3)? QRegion() : *(QRegion *) _qt5xhb_itemGetPtr(3);
    int par4 = ISNIL(4)? (int) QWidget::DrawWindowBackground | QWidget::DrawChildren : hb_parni(4);
    obj->render ( PQPAINTER(1), par2, par3, (QWidget::RenderFlags) par4 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void render (QPaintDevice *target, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))
//[2]void render (QPainter *painter, const QPoint &targetOffset = QPoint(),const QRegion &sourceRegion = QRegion(),RenderFlags renderFlags = RenderFlags(DrawWindowBackground | DrawChildren))

HB_FUNC_STATIC( QWIDGET_RENDER ) // TODO: identificar QPaintDevice e QPainter
{
  if( ISBETWEEN(1,4) && ISOBJECT(1) && (ISQPOINT(2)||ISNIL(2)) && (ISQREGION(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QWIDGET_RENDER1 );
  }
  else if( ISBETWEEN(1,4) && ISQPAINTER(1) && (ISQPOINT(2)||ISNIL(2)) && (ISQREGION(3)||ISNIL(3)) && ISOPTNUM(4) )
  {
    HB_FUNC_EXEC( QWIDGET_RENDER2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void repaint ( int x, int y, int w, int h )
*/
void QWidget_repaint1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->repaint ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void repaint ( const QRect & rect )
*/
void QWidget_repaint2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->repaint ( *PQRECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void repaint ( const QRegion & rgn )
*/
void QWidget_repaint3 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->repaint ( *PQREGION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void repaint ()
*/
void QWidget_repaint4 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->repaint ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void repaint ( int x, int y, int w, int h )
//[2]void repaint ( const QRect & rect )
//[3]void repaint ( const QRegion & rgn )
//[4]void repaint ()

HB_FUNC_STATIC( QWIDGET_REPAINT )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_repaint1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QWidget_repaint2();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QWidget_repaint3();
  }
  else if( ISNUMPAR(0) )
  {
    QWidget_repaint4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void resize ( const QSize & )
*/
void QWidget_resize1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resize ( *PQSIZE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resize ( int w, int h )
*/
void QWidget_resize2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->resize ( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void resize ( const QSize & )
//[2]void resize ( int w, int h )

HB_FUNC_STATIC( QWIDGET_RESIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_resize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_resize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool restoreGeometry ( const QByteArray & geometry )
*/
$method=|bool|restoreGeometry|const QByteArray &

/*
QByteArray saveGeometry () const
*/
HB_FUNC_STATIC( QWIDGET_SAVEGEOMETRY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->saveGeometry () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
void scroll ( int dx, int dy )
*/
void QWidget_scroll1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scroll ( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void scroll ( int dx, int dy, const QRect & r )
*/
void QWidget_scroll2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->scroll ( PINT(1), PINT(2), *PQRECT(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void scroll ( int dx, int dy )
//[2]void scroll ( int dx, int dy, const QRect & r )

HB_FUNC_STATIC( QWIDGET_SCROLL )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_scroll1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQRECT(3) )
  {
    QWidget_scroll2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setAttribute ( Qt::WidgetAttribute attribute, bool on = true )
*/
HB_FUNC_STATIC( QWIDGET_SETATTRIBUTE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTLOG(2) )
    {
      obj->setAttribute ( (Qt::WidgetAttribute) hb_parni(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContentsMargins ( int left, int top, int right, int bottom )
*/
void QWidget_setContentsMargins1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setContentsMargins ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setContentsMargins ( const QMargins & margins )
*/
void QWidget_setContentsMargins2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setContentsMargins ( *PQMARGINS(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setContentsMargins ( int left, int top, int right, int bottom )
//[2]void setContentsMargins ( const QMargins & margins )

HB_FUNC_STATIC( QWIDGET_SETCONTENTSMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_setContentsMargins1();
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    QWidget_setContentsMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setEditFocus ( bool enable )
*/
HB_FUNC_STATIC( QWIDGET_SETEDITFOCUS )
{
#ifdef QT_KEYPAD_NAVIGATION
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setEditFocus ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setFixedHeight ( int h )
*/
$method=|void|setFixedHeight|int

/*
void setFixedSize ( const QSize & s )
*/
void QWidget_setFixedSize1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFixedSize ( *PQSIZE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFixedSize ( int w, int h )
*/
void QWidget_setFixedSize2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFixedSize ( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setFixedSize ( const QSize & s )
//[2]void setFixedSize ( int w, int h )

HB_FUNC_STATIC( QWIDGET_SETFIXEDSIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setFixedSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setFixedSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setFixedWidth ( int w )
*/
$method=|void|setFixedWidth|int

/*
void setFocus ( Qt::FocusReason reason )
*/
void QWidget_setFocus1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFocus ( (Qt::FocusReason) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFocus ()
*/
void QWidget_setFocus2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFocus ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setFocus ( Qt::FocusReason reason )
//[2]void setFocus ()

HB_FUNC_STATIC( QWIDGET_SETFOCUS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QWidget_setFocus1();
  }
  else if( ISNUMPAR(0) )
  {
    QWidget_setFocus2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setFocusProxy ( QWidget * w )
*/
$method=|void|setFocusProxy|QWidget *

/*
const QRect & geometry () const
*/
HB_FUNC_STATIC( QWIDGET_GEOMETRY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QRect * ptr = &obj->geometry ();
    _qt5xhb_createReturnClass ( ptr, "QRECT" );
  }
}

/*
void setGeometry ( const QRect & )
*/
void QWidget_setGeometry1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setGeometry ( *PQRECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGeometry ( int x, int y, int w, int h )
*/
void QWidget_setGeometry2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setGeometry ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setGeometry ( const QRect & )
//[2]void setGeometry ( int x, int y, int w, int h )

HB_FUNC_STATIC( QWIDGET_SETGEOMETRY )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QWidget_setGeometry1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_setGeometry2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setLayout ( QLayout * layout )
*/
$method=|void|setLayout|QLayout *

/*
QSize maximumSize () const
*/
HB_FUNC_STATIC( QWIDGET_MAXIMUMSIZE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setMaximumSize ( const QSize & )
*/
void QWidget_setMaximumSize1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMaximumSize ( *PQSIZE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaximumSize ( int maxw, int maxh )
*/
void QWidget_setMaximumSize2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMaximumSize ( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setMaximumSize ( const QSize & )
//[2]void setMaximumSize ( int maxw, int maxh )

HB_FUNC_STATIC( QWIDGET_SETMAXIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setMaximumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setMaximumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSize minimumSize () const
*/
HB_FUNC_STATIC( QWIDGET_MINIMUMSIZE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setMinimumSize ( const QSize & )
*/
void QWidget_setMinimumSize1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMinimumSize ( *PQSIZE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMinimumSize ( int minw, int minh )
*/
void QWidget_setMinimumSize2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setMinimumSize ( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setMinimumSize ( const QSize & )
//[2]void setMinimumSize ( int minw, int minh )

HB_FUNC_STATIC( QWIDGET_SETMINIMUMSIZE )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setMinimumSize1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setMinimumSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setParent ( QWidget * parent )
*/
void QWidget_setParent1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setParent ( PQWIDGET(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setParent ( QWidget * parent, Qt::WindowFlags f )
*/
void QWidget_setParent2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setParent ( PQWIDGET(1), (Qt::WindowFlags) par2 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setParent ( QWidget * parent )
//[2]void setParent ( QWidget * parent, Qt::WindowFlags f )

HB_FUNC_STATIC( QWIDGET_SETPARENT )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QWidget_setParent1();
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QWidget_setParent2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setShortcutAutoRepeat ( int id, bool enable = true )
*/
HB_FUNC_STATIC( QWIDGET_SETSHORTCUTAUTOREPEAT )
{
#ifndef QT_NO_SHORTCUT
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTLOG(2) )
    {
      obj->setShortcutAutoRepeat ( PINT(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setShortcutEnabled ( int id, bool enable = true )
*/
HB_FUNC_STATIC( QWIDGET_SETSHORTCUTENABLED )
{
#ifndef QT_NO_SHORTCUT
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISOPTLOG(2) )
    {
      obj->setShortcutEnabled ( PINT(1), OPBOOL(2,true) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QSize sizeIncrement () const
*/
HB_FUNC_STATIC( QWIDGET_SIZEINCREMENT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeIncrement () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setSizeIncrement ( const QSize & )
*/
void QWidget_setSizeIncrement1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSizeIncrement ( *PQSIZE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizeIncrement ( int w, int h )
*/
void QWidget_setSizeIncrement2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSizeIncrement ( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setSizeIncrement ( const QSize & )
//[2]void setSizeIncrement ( int w, int h )

HB_FUNC_STATIC( QWIDGET_SETSIZEINCREMENT )
{
  if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QWidget_setSizeIncrement1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setSizeIncrement2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSizePolicy sizePolicy () const
*/
HB_FUNC_STATIC( QWIDGET_SIZEPOLICY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSizePolicy * ptr = new QSizePolicy( obj->sizePolicy () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEPOLICY", true );
  }
}

/*
void setSizePolicy ( QSizePolicy )
*/
void QWidget_setSizePolicy1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSizePolicy ( *PQSIZEPOLICY(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizePolicy ( QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical )
*/
void QWidget_setSizePolicy2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSizePolicy ( (QSizePolicy::Policy) hb_parni(1), (QSizePolicy::Policy) hb_parni(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setSizePolicy ( QSizePolicy & )
//[2]void setSizePolicy ( QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical )

HB_FUNC_STATIC( QWIDGET_SETSIZEPOLICY )
{
  if( ISNUMPAR(1) && ISQSIZEPOLICY(1) )
  {
    QWidget_setSizePolicy1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QWidget_setSizePolicy2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int toolTipDuration() const
*/
HB_FUNC_STATIC( QWIDGET_TOOLTIPDURATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT_NO_TOOLTIP
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->toolTipDuration () );
  }
#endif
#endif
}

/*
void setToolTipDuration(int msec)
*/
HB_FUNC_STATIC( QWIDGET_SETTOOLTIPDURATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifndef QT_NO_TOOLTIP
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setToolTipDuration ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}

/*
Qt::WindowModality windowModality () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWMODALITY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->windowModality () );
  }
}

/*
void setWindowModality ( Qt::WindowModality windowModality )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWMODALITY )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setWindowModality ( (Qt::WindowModality) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWindowRole ( const QString & role )
*/
$method=|void|setWindowRole|const QString &

/*
void setWindowState ( Qt::WindowStates windowState )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWSTATE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setWindowState ( (Qt::WindowStates) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize size () const
*/
HB_FUNC_STATIC( QWIDGET_SIZE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->size () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QWIDGET_SIZEHINT )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void stackUnder ( QWidget * w )
*/
$method=|void|stackUnder|QWidget *

/*
QString statusTip () const
*/
HB_FUNC_STATIC( QWIDGET_STATUSTIP )
{
#ifndef QT_NO_STATUSTIP
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->statusTip () );
  }
#endif
}

/*
void setStatusTip ( const QString & )
*/
HB_FUNC_STATIC( QWIDGET_SETSTATUSTIP )
{
#ifndef QT_NO_STATUSTIP
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setStatusTip ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QStyle * style () const
*/
HB_FUNC_STATIC( QWIDGET_STYLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStyle * ptr = obj->style ();
    _qt5xhb_createReturnClass ( ptr, "QSTYLE" );
  }
}

/*
void setStyle ( QStyle * style )
*/
$method=|void|setStyle|QStyle *

/*
QString styleSheet () const
*/
HB_FUNC_STATIC( QWIDGET_STYLESHEET )
{
#ifndef QT_NO_STYLE_STYLESHEET
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->styleSheet () );
  }
#endif
}

/*
void setStyleSheet ( const QString & styleSheet )
*/
HB_FUNC_STATIC( QWIDGET_SETSTYLESHEET )
{
#ifndef QT_NO_STYLE_STYLESHEET
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setStyleSheet ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool testAttribute ( Qt::WidgetAttribute attribute ) const
*/
HB_FUNC_STATIC( QWIDGET_TESTATTRIBUTE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      RBOOL( obj->testAttribute ( (Qt::WidgetAttribute) hb_parni(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString toolTip () const
*/
HB_FUNC_STATIC( QWIDGET_TOOLTIP )
{
#ifndef QT_NO_TOOLTIP
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->toolTip () );
  }
#endif
}

/*
void setToolTip ( const QString & )
*/
HB_FUNC_STATIC( QWIDGET_SETTOOLTIP )
{
#ifndef QT_NO_TOOLTIP
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setToolTip ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
bool underMouse () const
*/
$method=|bool|underMouse|

/*
void ungrabGesture ( Qt::GestureType gesture )
*/
HB_FUNC_STATIC( QWIDGET_UNGRABGESTURE )
{
#ifndef QT_NO_GESTURES
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->ungrabGesture ( (Qt::GestureType) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void update ( int x, int y, int w, int h )
*/
void QWidget_update1 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->update ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ( const QRect & rect )
*/
void QWidget_update2 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->update ( *PQRECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ( const QRegion & rgn )
*/
void QWidget_update3 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->update ( *PQREGION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void update ()
*/
void QWidget_update4 ()
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->update ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void update ( int x, int y, int w, int h )
//[2]void update ( const QRect & rect )
//[3]void update ( const QRegion & rgn )
//[4]void update ()

HB_FUNC_STATIC( QWIDGET_UPDATE )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QWidget_update1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QWidget_update2();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QWidget_update3();
  }
  else if( ISNUMPAR(0) )
  {
    QWidget_update4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void updateGeometry ()
*/
$method=|void|updateGeometry|

/*
bool updatesEnabled () const
*/
$method=|bool|updatesEnabled|

/*
void setUpdatesEnabled ( bool enable )
*/
$method=|void|setUpdatesEnabled|bool

/*
QRegion visibleRegion () const
*/
HB_FUNC_STATIC( QWIDGET_VISIBLEREGION )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * ptr = new QRegion( obj->visibleRegion () );
    _qt5xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
QString whatsThis () const
*/
HB_FUNC_STATIC( QWIDGET_WHATSTHIS )
{
#ifndef QT_NO_WHATSTHIS
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQSTRING( obj->whatsThis () );
  }
#endif
}

/*
void setWhatsThis ( const QString & )
*/
HB_FUNC_STATIC( QWIDGET_SETWHATSTHIS )
{
#ifndef QT_NO_WHATSTHIS
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setWhatsThis ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
int width () const
*/
$method=|int|width|

/*
WId winId () const
*/
HB_FUNC_STATIC( QWIDGET_WINID )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    WId r = obj->winId ();
    hb_retptr( (void*) r );
  }
}

/*
WId internalWinId() const
*/
HB_FUNC_STATIC( QWIDGET_INTERNALWINID )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    WId r = obj->internalWinId ();
    hb_retptr( (void*) r );
  }
}

/*
QWidget * window () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOW )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->window ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
QString windowFilePath () const
*/
$method=|QString|windowFilePath|

/*
void setWindowFilePath ( const QString & filePath )
*/
$method=|void|setWindowFilePath|const QString &

/*
Qt::WindowFlags windowFlags () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWFLAGS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->windowFlags () );
  }
}

/*
void setWindowFlags ( Qt::WindowFlags type )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWFLAGS )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->setWindowFlags ( (Qt::WindowFlags) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon windowIcon () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWICON )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon * ptr = new QIcon( obj->windowIcon () );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
void setWindowIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QWIDGET_SETWINDOWICON )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQICON(1)||ISCHAR(1)) )
    {
      QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
      obj->setWindowIcon ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString windowIconText () const
*/
$method=|QString|windowIconText|

/*
void setWindowIconText ( const QString & )
*/
$method=|void|setWindowIconText|const QString &

/*
qreal windowOpacity () const
*/
$method=|qreal|windowOpacity|

/*
void setWindowOpacity ( qreal level )
*/
$method=|void|setWindowOpacity|qreal

/*
QString windowRole () const
*/
$method=|QString|windowRole|

/*
Qt::WindowStates windowState () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWSTATE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->windowState () );
  }
}

/*
QString windowTitle () const
*/
$method=|QString|windowTitle|

/*
void setWindowTitle ( const QString & )
*/
$method=|void|setWindowTitle|const QString &

/*
Qt::WindowType windowType () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWTYPE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->windowType () );
  }
}

/*
int x () const
*/
$method=|int|x|

/*
int y () const
*/
$method=|int|y|

/*
QPaintEngine * paintEngine () const
*/
HB_FUNC_STATIC( QWIDGET_PAINTENGINE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPaintEngine * ptr = obj->paintEngine ();
    _qt5xhb_createReturnClass ( ptr, "QPAINTENGINE" );
  }
}

/*
bool close ()
*/
$method=|bool|close|

/*
void hide ()
*/
$method=|void|hide|

/*
void lower ()
*/
$method=|void|lower|

/*
void raise ()
*/
$method=|void|raise|

/*
void setDisabled ( bool disable )
*/
$method=|void|setDisabled|bool

/*
bool isEnabled () const
*/
$method=|bool|isEnabled|

/*
void setEnabled ( bool )
*/
$method=|void|setEnabled|bool

/*
void setHidden ( bool hidden )
*/
$method=|void|setHidden|bool

/*
void show ()
*/
$method=|void|show|

/*
void showFullScreen ()
*/
$method=|void|showFullScreen|

/*
void showMaximized ()
*/
$method=|void|showMaximized|

/*
void showMinimized ()
*/
$method=|void|showMinimized|

/*
void showNormal ()
*/
$method=|void|showNormal|

/*
int devType() const
*/
$method=|int|devType|

/*
bool isTopLevel() const
*/
$method=|bool|isTopLevel|

/*
bool isEnabledToTLW() const
*/
$method=|bool|isEnabledToTLW|

/*
QWidget * topLevelWidget () const
*/
HB_FUNC_STATIC( QWIDGET_TOPLEVELWIDGET )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->topLevelWidget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
Q_INVOKABLE QPixmap grab (const QRect &rectangle = QRect(QPoint(0, 0), QSize(-1, -1)))
*/
HB_FUNC_STATIC( QWIDGET_GRAB )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQRECT(1)||ISNIL(1)) )
    {
      QRect par1 = ISNIL(1)? QRect(QPoint(0, 0), QSize(-1, -1)) : *(QRect *) _qt5xhb_itemGetPtr(1);
      QPixmap * ptr = new QPixmap( obj->grab ( par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isRightToLeft() const
*/
$method=|bool|isRightToLeft|

/*
bool isLeftToRight() const
*/
$method=|bool|isLeftToRight|

/*
void overrideWindowState (Qt::WindowStates state)
*/
HB_FUNC_STATIC( QWIDGET_OVERRIDEWINDOWSTATE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      int par1 = hb_parni(1);
      obj->overrideWindowState ( (Qt::WindowStates) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QBackingStore * backingStore () const
*/
HB_FUNC_STATIC( QWIDGET_BACKINGSTORE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QBackingStore * ptr = obj->backingStore ();
    _qt5xhb_createReturnClass ( ptr, "QBACKINGSTORE" );
  }
}

/*
QWindow * windowHandle () const
*/
HB_FUNC_STATIC( QWIDGET_WINDOWHANDLE )
{
  QWidget * obj = (QWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWindow * ptr = obj->windowHandle ();
    _qt5xhb_createReturnClass ( ptr, "QWINDOW" );
  }
}

/*
virtual bool hasHeightForWidth() const
*/
$method=|bool|hasHeightForWidth|

//=============================================================================
// QPaintDevice methods - BEGIN
//=============================================================================

/*
int colorCount () const
*/
$method=|int|colorCount|

/*
int depth () const
*/
$method=|int|depth|

/*
int heightMM () const
*/
$method=|int|heightMM|

/*
int logicalDpiX () const
*/
$method=|int|logicalDpiX|

/*
int logicalDpiY () const
*/
$method=|int|logicalDpiY|

/*
bool paintingActive () const
*/
$method=|bool|paintingActive|

/*
int physicalDpiX () const
*/
$method=|int|physicalDpiX|

/*
int physicalDpiY () const
*/
$method=|int|physicalDpiY|

/*
int widthMM () const
*/
$method=|int|widthMM|

//=============================================================================
// QPaintDevice methods - END
//=============================================================================

/*
static QWidget * find ( WId id )
*/
HB_FUNC_STATIC( QWIDGET_FIND )
{
  if( ISPOINTER(1) )
  {
    QWidget * ptr = QWidget::find ( (WId) hb_parptr(1) );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QWidget * keyboardGrabber ()
*/
HB_FUNC_STATIC( QWIDGET_KEYBOARDGRABBER )
{
  QWidget * ptr = QWidget::keyboardGrabber ();
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static QWidget * mouseGrabber ()
*/
HB_FUNC_STATIC( QWIDGET_MOUSEGRABBER )
{
  QWidget * ptr = QWidget::mouseGrabber ();
  _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
}

/*
static void setTabOrder ( QWidget * first, QWidget * second )
*/
$staticMethod=|void|setTabOrder|QWidget *,QWidget *

/*
static QWidget * createWindowContainer (QWindow *window, QWidget *parent=0, Qt::WindowFlags flags=0)
*/
HB_FUNC_STATIC( QWIDGET_CREATEWINDOWCONTAINER )
{
  if( ISQWINDOW(1) && ISOPTQWIDGET(2) && ISOPTNUM(3) )
  {
    int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
    QWidget * ptr = QWidget::createWindowContainer ( PQWINDOW(1), OPQWIDGET(2,0), (Qt::WindowFlags) par3 );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP