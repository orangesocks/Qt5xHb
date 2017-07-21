$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QRECT
REQUEST QICON
REQUEST QSIZE
#endif

CLASS QMenu INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD actionAt
   METHOD actionGeometry
   METHOD activeAction
   METHOD setActiveAction
   METHOD addAction
   METHOD addMenu
   METHOD addSeparator
   METHOD clear
   METHOD defaultAction
   METHOD setDefaultAction
   METHOD exec
   METHOD hideTearOffMenu
   METHOD icon
   METHOD setIcon
   METHOD insertMenu
   METHOD insertSeparator
   METHOD isEmpty
   METHOD isTearOffEnabled
   METHOD setTearOffEnabled
   METHOD isTearOffMenuVisible
   METHOD menuAction
   METHOD popup
   METHOD separatorsCollapsible
   METHOD setSeparatorsCollapsible
   METHOD title
   METHOD setTitle
   METHOD sizeHint
   METHOD wceMenu
   METHOD addSection
   METHOD insertSection
   METHOD setNoReplayFor
   METHOD setAsDockMenu
   METHOD toolTipsVisible
   METHOD setToolTipsVisible
   METHOD toNSMenu

   METHOD onAboutToHide
   METHOD onAboutToShow
   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
explicit QMenu ( QWidget * parent = 0 )
*/
void QMenu_new1 ()
{
  QMenu * o = new QMenu ( OPQWIDGET(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QMenu ( const QString & title, QWidget * parent = 0 )
*/
void QMenu_new2 ()
{
  QMenu * o = new QMenu ( PQSTRING(1), OPQWIDGET(2,0) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]explicit QMenu ( QWidget * parent = 0 )
//[2]explicit QMenu ( const QString & title, QWidget * parent = 0 )

HB_FUNC_STATIC( QMENU_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QMenu_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QMenu_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QAction * actionAt ( const QPoint & pt ) const
*/
HB_FUNC_STATIC( QMENU_ACTIONAT )
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) )
    {
      QAction * ptr = obj->actionAt ( *PQPOINT(1) );
      _qt5xhb_createReturnClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect actionGeometry ( QAction * act ) const
*/
HB_FUNC_STATIC( QMENU_ACTIONGEOMETRY )
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) )
    {
      QRect * ptr = new QRect( obj->actionGeometry ( PQACTION(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAction * activeAction () const
*/
HB_FUNC_STATIC( QMENU_ACTIVEACTION )
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->activeAction ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void setActiveAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENU_SETACTIVEACTION )
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) )
    {
      obj->setActiveAction ( PQACTION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * addAction ( const QString & text )
*/
void QMenu_addAction1 ()
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->addAction ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text )
*/
void QMenu_addAction2 ()
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QAction * ptr = obj->addAction ( par1, PQSTRING(2) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
*/
void QMenu_addAction3 ()
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QObject * par2 = (const QObject *) _qt5xhb_itemGetPtr(2);
    QKeySequence par4 = ISNIL(4)? 0 : *(QKeySequence *) _qt5xhb_itemGetPtr(4);
    QAction * ptr = obj->addAction ( PQSTRING(1), par2, PCONSTCHAR(3), par4 );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
*/
void QMenu_addAction4 ()
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    const QObject * par3 = (const QObject *) _qt5xhb_itemGetPtr(3);
    QKeySequence par5 = ISNIL(5)? 0 : *(QKeySequence *) _qt5xhb_itemGetPtr(5);
    QAction * ptr = obj->addAction ( par1, PQSTRING(2), par3, PCONSTCHAR(4), par5 );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void addAction ( QAction * action )
*/
void QMenu_addAction5 ()
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addAction ( PQACTION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]QAction * addAction ( const QString & text )
//[2]QAction * addAction ( const QIcon & icon, const QString & text )
//[3]QAction * addAction ( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
//[4]QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
//[5]void addAction ( QAction * action )

HB_FUNC_STATIC( QMENU_ADDACTION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenu_addAction1();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QMenu_addAction2();
  }
  else if( ISBETWEEN(3,4) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) && (ISQKEYSEQUENCE(4)||ISNIL(4)) )
  {
    QMenu_addAction3();
  }
  else if( ISBETWEEN(4,5) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) && ISCHAR(4) && (ISQKEYSEQUENCE(5)||ISNIL(5)) )
  {
    QMenu_addAction4();
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    QMenu_addAction5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addMenu ( QMenu * menu )
*/
void QMenu_addMenu1 ()
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->addMenu ( PQMENU(1) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QMenu * addMenu ( const QString & title )
*/
void QMenu_addMenu2 ()
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenu * ptr = obj->addMenu ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}

/*
QMenu * addMenu ( const QIcon & icon, const QString & title )
*/
void QMenu_addMenu3 ()
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QMenu * ptr = obj->addMenu ( par1, PQSTRING(2) );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}

//[1]QAction * addMenu ( QMenu * menu )
//[2]QMenu * addMenu ( const QString & title )
//[3]QMenu * addMenu ( const QIcon & icon, const QString & title )

HB_FUNC_STATIC( QMENU_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    QMenu_addMenu1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenu_addMenu2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QMenu_addMenu3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addSeparator ()
*/
HB_FUNC_STATIC( QMENU_ADDSEPARATOR )
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->addSeparator ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void clear ()
*/
$method=|void|clear|

/*
QAction * defaultAction () const
*/
HB_FUNC_STATIC( QMENU_DEFAULTACTION )
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->defaultAction ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void setDefaultAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENU_SETDEFAULTACTION )
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) )
    {
      obj->setDefaultAction ( PQACTION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * exec ()
*/
void QMenu_exec1 ()
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->exec ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
QAction * exec ( const QPoint & pos, QAction * at = 0 )
*/
void QMenu_exec2 ()
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->exec ( *PQPOINT(1), OPQACTION(2,0) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
static QAction *exec(QList<QAction*> actions, const QPoint &pos, QAction *at=0, QWidget *parent=0)
*/
void QMenu_exec3 ()
{
  QList<QAction *> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QAction * ptr = QMenu::exec ( par1, *PQPOINT(2), OPQACTION(3,0), OPQWIDGET(4,0) );
  _qt5xhb_createReturnClass ( ptr, "QACTION" );
}

//[1]QAction * exec ()
//[2]QAction * exec ( const QPoint & pos, QAction * at = 0 )
//[3]static QAction *exec(QList<QAction*> actions, const QPoint &pos, QAction *at=0, QWidget *parent=0)

HB_FUNC_STATIC( QMENU_EXEC )
{
  if( ISNUMPAR(0) )
  {
    QMenu_exec1();
  }
  else if( ISBETWEEN(1,2) && ISQPOINT(1) && ISOPTQACTION(2) )
  {
    QMenu_exec2();
  }
  else if( ISBETWEEN(2,4) && ISARRAY(1) && ISQPOINT(2) && ISOPTQACTION(3) && ISOPTQWIDGET(4) )
  {
    QMenu_exec3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void hideTearOffMenu ()
*/
$method=|void|hideTearOffMenu|

/*
QIcon icon () const
*/
HB_FUNC_STATIC( QMENU_ICON )
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QMENU_SETICON )
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQICON(1)||ISCHAR(1)) )
    {
      QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
      obj->setIcon ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * insertMenu ( QAction * before, QMenu * menu )
*/
HB_FUNC_STATIC( QMENU_INSERTMENU )
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) && ISQMENU(2) )
    {
      QAction * ptr = obj->insertMenu ( PQACTION(1), PQMENU(2) );
      _qt5xhb_createReturnClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QAction * insertSeparator ( QAction * before )
*/
HB_FUNC_STATIC( QMENU_INSERTSEPARATOR )
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQACTION(1) )
    {
      QAction * ptr = obj->insertSeparator ( PQACTION(1) );
      _qt5xhb_createReturnClass ( ptr, "QACTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
bool isTearOffEnabled () const
*/
$method=|bool|isTearOffEnabled|

/*
void setTearOffEnabled ( bool )
*/
$method=|void|setTearOffEnabled|bool

/*
bool isTearOffMenuVisible () const
*/
$method=|bool|isTearOffMenuVisible|

/*
QAction * menuAction () const
*/
HB_FUNC_STATIC( QMENU_MENUACTION )
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->menuAction ();
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}

/*
void popup ( const QPoint & pos, QAction * at = 0 )
*/
HB_FUNC_STATIC( QMENU_POPUP )
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPOINT(1) && ISOPTQACTION(2) )
    {
      obj->popup ( *PQPOINT(1), OPQACTION(2,0) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool separatorsCollapsible () const
*/
$method=|bool|separatorsCollapsible|

/*
void setSeparatorsCollapsible ( bool collapse )
*/
$method=|void|setSeparatorsCollapsible|bool

/*
QString title () const
*/
$method=|QString|title|

/*
void setTitle ( const QString & title )
*/
$method=|void|setTitle|const QString &

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QMENU_SIZEHINT )
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
HMENU wceMenu ()
*/
HB_FUNC_STATIC( QMENU_WCEMENU )
{
#ifdef Q_OS_WINCE
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retptr( (HMENU) obj->wceMenu () );
  }
#endif
}

/*
QAction * addSection ( const QString & text )
*/
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QMenu_addSection1 ()
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->addSection ( PQSTRING(1) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}
#endif

/*
QAction *addSection(const QIcon &icon, const QString &text)
*/
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QMenu_addSection2 ()
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    QAction * ptr = obj->addSection ( par1, PQSTRING(2) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}
#endif

//[1]QAction *addSection(const QString &text)
//[2]QAction *addSection(const QIcon &icon, const QString &text)

HB_FUNC_STATIC( QMENU_ADDSECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenu_addSection1();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QMenu_addSection2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QAction *insertSection(QAction *before, const QString &text)
*/
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QMenu_insertSection1 ()
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QAction * ptr = obj->insertSection ( PQACTION(1), PQSTRING(2) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}
#endif

/*
QAction *insertSection(QAction *before, const QIcon &icon, const QString &text)
*/
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
void QMenu_insertSection2 ()
{
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon par2 = ISOBJECT(2)? *(QIcon *) _qt5xhb_itemGetPtr(2) : QIcon(hb_parc(2));
    QAction * ptr = obj->insertSection ( PQACTION(1), par2, PQSTRING(3) );
    _qt5xhb_createReturnClass ( ptr, "QACTION" );
  }
}
#endif

//[1]QAction *insertSection(QAction *before, const QString &text)
//[2]QAction *insertSection(QAction *before, const QIcon &icon, const QString &text)

HB_FUNC_STATIC( QMENU_INSERTSECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(2) && ISQACTION(1) && ISCHAR(2) )
  {
    QMenu_insertSection1();
  }
  else if( ISNUMPAR(3) && ISQACTION(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    QMenu_insertSection2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
void setNoReplayFor(QWidget *widget)
*/
$method=|void|setNoReplayFor|QWidget *

/*
void setAsDockMenu()
*/
HB_FUNC_STATIC( QMENU_SETASDOCKMENU )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifdef Q_OS_OSX
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setAsDockMenu ();
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}

/*
bool toolTipsVisible() const
*/
HB_FUNC_STATIC( QMENU_TOOLTIPSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->toolTipsVisible () );
  }
#endif
}

/*
void setToolTipsVisible(bool visible)
*/
HB_FUNC_STATIC( QMENU_SETTOOLTIPSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setToolTipsVisible ( PBOOL(1) );
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
NSMenu * QMenu::toNSMenu()
*/
HB_FUNC_STATIC( QMENU_TONSMENU )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifdef Q_OS_OSX
  QMenu * obj = (QMenu *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retptr( (NSMenu *) obj->toNSMenu () );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
#endif
}

#pragma ENDDUMP