/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTITEMDELEGATE
REQUEST QABSTRACTITEMMODEL
REQUEST QABSTRACTITEMVIEW
REQUEST QCOMPLETER
REQUEST QICON
REQUEST QLINEEDIT
REQUEST QMODELINDEX
REQUEST QSIZE
REQUEST QVALIDATOR
REQUEST QVARIANT
#endif

CLASS QComboBox INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addItems
   METHOD completer
   METHOD count
   METHOD currentIndex
   METHOD currentText
   METHOD duplicatesEnabled
   METHOD findData
   METHOD findText
   METHOD hasFrame
   METHOD hidePopup
   METHOD iconSize
   METHOD insertItem
   METHOD insertItems
   METHOD insertPolicy
   METHOD insertSeparator
   METHOD isEditable
   METHOD itemData
   METHOD itemDelegate
   METHOD itemIcon
   METHOD itemText
   METHOD lineEdit
   METHOD maxCount
   METHOD maxVisibleItems
   METHOD minimumContentsLength
   METHOD model
   METHOD modelColumn
   METHOD removeItem
   METHOD rootModelIndex
   METHOD setCompleter
   METHOD setDuplicatesEnabled
   METHOD setEditable
   METHOD setFrame
   METHOD setIconSize
   METHOD setInsertPolicy
   METHOD setItemData
   METHOD setItemDelegate
   METHOD setItemIcon
   METHOD setItemText
   METHOD setLineEdit
   METHOD setMaxCount
   METHOD setMaxVisibleItems
   METHOD setMinimumContentsLength
   METHOD setModel
   METHOD setModelColumn
   METHOD setRootModelIndex
   METHOD setSizeAdjustPolicy
   METHOD setValidator
   METHOD setView
   METHOD showPopup
   METHOD sizeAdjustPolicy
   METHOD validator
   METHOD view
   METHOD event
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD clear
   METHOD clearEditText
   METHOD setCurrentIndex
   METHOD setEditText

   METHOD onActivated1
   METHOD onActivated2
   METHOD onCurrentIndexChanged1
   METHOD onCurrentIndexChanged2
   METHOD onEditTextChanged
   METHOD onHighlighted1
   METHOD onHighlighted2

   // for compatibility
   METHOD onActivated            // = onActivated1
   METHOD onActivatedC           // = onActivated2
   METHOD onCurrentIndexChanged  // = onCurrentIndexChanged1
   METHOD onCurrentIndexChangedC // = onCurrentIndexChanged2
   METHOD onHighlighted          // = onHighlighted1
   METHOD onHighlightedC         // = onHighlighted2

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QComboBox
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QComboBox>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QComboBox>
#endif

#include <QtWidgets/QCompleter>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QAbstractItemView>

/*
QComboBox( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QCOMBOBOX_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QComboBox * obj = new QComboBox( OPQWIDGET(1,0) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QCOMBOBOX_DELETE )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addItem( const QString & text, const QVariant & userData = QVariant() )
*/
void QComboBox_addItem1()
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addItem( PQSTRING(1), ISNIL(2)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addItem( const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
*/
void QComboBox_addItem2()
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addItem( ISOBJECT(1)? *(QIcon *) Qt5xHb::itemGetPtr(1) : QIcon(hb_parc(1)), PQSTRING(2), ISNIL(3)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QCOMBOBOX_ADDITEM )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) )
  {
    QComboBox_addItem1();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQVARIANT(3)||ISNIL(3)) )
  {
    QComboBox_addItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void addItems( const QStringList & texts )
*/
HB_FUNC_STATIC( QCOMBOBOX_ADDITEMS )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->addItems( PQSTRINGLIST(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QCompleter * completer() const
*/
HB_FUNC_STATIC( QCOMBOBOX_COMPLETER )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCompleter * ptr = obj->completer();
      Qt5xHb::createReturnQObjectClass( ptr, "QCOMPLETER" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int count() const
*/
HB_FUNC_STATIC( QCOMBOBOX_COUNT )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int currentIndex() const
*/
HB_FUNC_STATIC( QCOMBOBOX_CURRENTINDEX )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->currentIndex() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString currentText() const
*/
HB_FUNC_STATIC( QCOMBOBOX_CURRENTTEXT )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->currentText() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool duplicatesEnabled() const
*/
HB_FUNC_STATIC( QCOMBOBOX_DUPLICATESENABLED )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->duplicatesEnabled() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int findData( const QVariant & data, int role = Qt::UserRole, Qt::MatchFlags flags = Qt::MatchExactly | Qt::MatchCaseSensitive ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_FINDDATA )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,3) && ISQVARIANT(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
    {
#endif
      RINT( obj->findData( *PQVARIANT(1), OPINT(2,Qt::UserRole), ISNIL(3)? (Qt::MatchFlags) Qt::MatchExactly | Qt::MatchCaseSensitive : (Qt::MatchFlags) hb_parni(3) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int findText( const QString & text, Qt::MatchFlags flags = Qt::MatchExactly | Qt::MatchCaseSensitive ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_FINDTEXT )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
    {
#endif
      RINT( obj->findText( PQSTRING(1), ISNIL(2)? (Qt::MatchFlags) Qt::MatchExactly | Qt::MatchCaseSensitive : (Qt::MatchFlags) hb_parni(2) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool hasFrame() const
*/
HB_FUNC_STATIC( QCOMBOBOX_HASFRAME )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasFrame() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void hidePopup()
*/
HB_FUNC_STATIC( QCOMBOBOX_HIDEPOPUP )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->hidePopup();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize iconSize() const
*/
HB_FUNC_STATIC( QCOMBOBOX_ICONSIZE )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->iconSize() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void insertItem( int index, const QString & text, const QVariant & userData = QVariant() )
*/
void QComboBox_insertItem1()
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->insertItem( PINT(1), PQSTRING(2), ISNIL(3)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertItem( int index, const QIcon & icon, const QString & text, const QVariant & userData = QVariant() )
*/
void QComboBox_insertItem2()
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->insertItem( PINT(1), ISOBJECT(2)? *(QIcon *) Qt5xHb::itemGetPtr(2) : QIcon(hb_parc(2)), PQSTRING(3), ISNIL(4)? QVariant() : *(QVariant *) Qt5xHb::itemGetPtr(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QCOMBOBOX_INSERTITEM )
{
  if( ISBETWEEN(2,3) && ISNUM(1) && ISCHAR(2) && (ISQVARIANT(3)||ISNIL(3)) )
  {
    QComboBox_insertItem1();
  }
  else if( ISBETWEEN(3,4) && ISNUM(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) && (ISQVARIANT(4)||ISNIL(4)) )
  {
    QComboBox_insertItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void insertItems( int index, const QStringList & list )
*/
HB_FUNC_STATIC( QCOMBOBOX_INSERTITEMS )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISARRAY(2) )
    {
#endif
      obj->insertItems( PINT(1), PQSTRINGLIST(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QComboBox::InsertPolicy insertPolicy() const
*/
HB_FUNC_STATIC( QCOMBOBOX_INSERTPOLICY )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->insertPolicy() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void insertSeparator( int index )
*/
HB_FUNC_STATIC( QCOMBOBOX_INSERTSEPARATOR )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->insertSeparator( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isEditable() const
*/
HB_FUNC_STATIC( QCOMBOBOX_ISEDITABLE )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEditable() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QVariant itemData( int index, int role = Qt::UserRole ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_ITEMDATA )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
    {
#endif
      QVariant * ptr = new QVariant( obj->itemData( PINT(1), OPINT(2,Qt::UserRole) ) );
      Qt5xHb::createReturnClass( ptr, "QVARIANT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAbstractItemDelegate * itemDelegate() const
*/
HB_FUNC_STATIC( QCOMBOBOX_ITEMDELEGATE )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractItemDelegate * ptr = obj->itemDelegate();
      Qt5xHb::createReturnQObjectClass( ptr, "QABSTRACTITEMDELEGATE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QIcon itemIcon( int index ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_ITEMICON )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      QIcon * ptr = new QIcon( obj->itemIcon( PINT(1) ) );
      Qt5xHb::createReturnClass( ptr, "QICON", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString itemText( int index ) const
*/
HB_FUNC_STATIC( QCOMBOBOX_ITEMTEXT )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQSTRING( obj->itemText( PINT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QLineEdit * lineEdit() const
*/
HB_FUNC_STATIC( QCOMBOBOX_LINEEDIT )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QLineEdit * ptr = obj->lineEdit();
      Qt5xHb::createReturnQWidgetClass( ptr, "QLINEEDIT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int maxCount() const
*/
HB_FUNC_STATIC( QCOMBOBOX_MAXCOUNT )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->maxCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int maxVisibleItems() const
*/
HB_FUNC_STATIC( QCOMBOBOX_MAXVISIBLEITEMS )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->maxVisibleItems() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int minimumContentsLength() const
*/
HB_FUNC_STATIC( QCOMBOBOX_MINIMUMCONTENTSLENGTH )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->minimumContentsLength() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAbstractItemModel * model() const
*/
HB_FUNC_STATIC( QCOMBOBOX_MODEL )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractItemModel * ptr = obj->model();
      Qt5xHb::createReturnQObjectClass( ptr, "QABSTRACTITEMMODEL" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int modelColumn() const
*/
HB_FUNC_STATIC( QCOMBOBOX_MODELCOLUMN )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->modelColumn() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void removeItem( int index )
*/
HB_FUNC_STATIC( QCOMBOBOX_REMOVEITEM )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->removeItem( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QModelIndex rootModelIndex() const
*/
HB_FUNC_STATIC( QCOMBOBOX_ROOTMODELINDEX )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QModelIndex * ptr = new QModelIndex( obj->rootModelIndex() );
      Qt5xHb::createReturnClass( ptr, "QMODELINDEX", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setCompleter( QCompleter * completer )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETCOMPLETER )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCOMPLETER(1) )
    {
#endif
      obj->setCompleter( PQCOMPLETER(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDuplicatesEnabled( bool enable )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETDUPLICATESENABLED )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setDuplicatesEnabled( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEditable( bool editable )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETEDITABLE )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setEditable( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFrame( bool )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETFRAME )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setFrame( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIconSize( const QSize & size )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETICONSIZE )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
#endif
      obj->setIconSize( *PQSIZE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInsertPolicy( QComboBox::InsertPolicy policy )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETINSERTPOLICY )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setInsertPolicy( (QComboBox::InsertPolicy) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemData( int index, const QVariant & value, int role = Qt::UserRole )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETITEMDATA )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISQVARIANT(2) && (ISNUM(3)||ISNIL(3)) )
    {
#endif
      obj->setItemData( PINT(1), *PQVARIANT(2), OPINT(3,Qt::UserRole) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemDelegate( QAbstractItemDelegate * delegate )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETITEMDELEGATE )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMDELEGATE(1) )
    {
#endif
      obj->setItemDelegate( PQABSTRACTITEMDELEGATE(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemIcon( int index, const QIcon & icon )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETITEMICON )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && (ISQICON(2)||ISCHAR(2)) )
    {
#endif
      obj->setItemIcon( PINT(1), ISOBJECT(2)? *(QIcon *) Qt5xHb::itemGetPtr(2) : QIcon(hb_parc(2)) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemText( int index, const QString & text )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETITEMTEXT )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
    {
#endif
      obj->setItemText( PINT(1), PQSTRING(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLineEdit( QLineEdit * edit )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETLINEEDIT )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLINEEDIT(1) )
    {
#endif
      obj->setLineEdit( PQLINEEDIT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaxCount( int max )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETMAXCOUNT )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMaxCount( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaxVisibleItems( int maxItems )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETMAXVISIBLEITEMS )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMaxVisibleItems( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMinimumContentsLength( int characters )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETMINIMUMCONTENTSLENGTH )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMinimumContentsLength( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setModel( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETMODEL )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
    {
#endif
      obj->setModel( PQABSTRACTITEMMODEL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setModelColumn( int visibleColumn )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETMODELCOLUMN )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setModelColumn( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRootModelIndex( const QModelIndex & index )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETROOTMODELINDEX )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
#endif
      obj->setRootModelIndex( *PQMODELINDEX(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSizeAdjustPolicy( QComboBox::SizeAdjustPolicy policy )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETSIZEADJUSTPOLICY )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSizeAdjustPolicy( (QComboBox::SizeAdjustPolicy) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setValidator( const QValidator * validator )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETVALIDATOR )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALIDATOR(1) )
    {
#endif
      obj->setValidator( PQVALIDATOR(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setView( QAbstractItemView * itemView )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETVIEW )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTITEMVIEW(1) )
    {
#endif
      obj->setView( PQABSTRACTITEMVIEW(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void showPopup()
*/
HB_FUNC_STATIC( QCOMBOBOX_SHOWPOPUP )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->showPopup();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QComboBox::SizeAdjustPolicy sizeAdjustPolicy() const
*/
HB_FUNC_STATIC( QCOMBOBOX_SIZEADJUSTPOLICY )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->sizeAdjustPolicy() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
const QValidator * validator() const
*/
HB_FUNC_STATIC( QCOMBOBOX_VALIDATOR )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QValidator * ptr = obj->validator();
      Qt5xHb::createReturnQObjectClass( ptr, "QVALIDATOR" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAbstractItemView * view() const
*/
HB_FUNC_STATIC( QCOMBOBOX_VIEW )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractItemView * ptr = obj->view();
      Qt5xHb::createReturnQWidgetClass( ptr, "QABSTRACTITEMVIEW" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool event( QEvent * event )
*/
HB_FUNC_STATIC( QCOMBOBOX_EVENT )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQEVENT(1) )
    {
#endif
      RBOOL( obj->event( PQEVENT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QSize minimumSizeHint() const
*/
HB_FUNC_STATIC( QCOMBOBOX_MINIMUMSIZEHINT )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->minimumSizeHint() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC( QCOMBOBOX_SIZEHINT )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint() );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void clear()
*/
HB_FUNC_STATIC( QCOMBOBOX_CLEAR )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void clearEditText()
*/
HB_FUNC_STATIC( QCOMBOBOX_CLEAREDITTEXT )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearEditText();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentIndex( int index )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETCURRENTINDEX )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setCurrentIndex( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setEditText( const QString & text )
*/
HB_FUNC_STATIC( QCOMBOBOX_SETEDITTEXT )
{
  QComboBox * obj = (QComboBox *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setEditText( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QComboBoxSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QCOMBOBOX_ONACTIVATED1 )
{
  QComboBoxSlots_connect_signal( "activated(int)", "activated(int)" );
}

HB_FUNC_STATIC( QCOMBOBOX_ONACTIVATED2 )
{
  QComboBoxSlots_connect_signal( "activated(QString)", "activated(QString)" );
}

HB_FUNC_STATIC( QCOMBOBOX_ONCURRENTINDEXCHANGED1 )
{
  QComboBoxSlots_connect_signal( "currentIndexChanged(int)", "currentIndexChanged(int)" );
}

HB_FUNC_STATIC( QCOMBOBOX_ONCURRENTINDEXCHANGED2 )
{
  QComboBoxSlots_connect_signal( "currentIndexChanged(QString)", "currentIndexChanged(QString)" );
}

HB_FUNC_STATIC( QCOMBOBOX_ONEDITTEXTCHANGED )
{
  QComboBoxSlots_connect_signal( "editTextChanged(QString)", "editTextChanged(QString)" );
}

HB_FUNC_STATIC( QCOMBOBOX_ONHIGHLIGHTED1 )
{
  QComboBoxSlots_connect_signal( "highlighted(int)", "highlighted(int)" );
}

HB_FUNC_STATIC( QCOMBOBOX_ONHIGHLIGHTED2 )
{
  QComboBoxSlots_connect_signal( "highlighted(QString)", "highlighted(QString)" );
}

// for compatibility

HB_FUNC_STATIC( QCOMBOBOX_ONACTIVATED )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONACTIVATED1 );
}

HB_FUNC_STATIC( QCOMBOBOX_ONACTIVATEDC )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONACTIVATED2 );
}

HB_FUNC_STATIC( QCOMBOBOX_ONCURRENTINDEXCHANGED )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONCURRENTINDEXCHANGED1 );
}

HB_FUNC_STATIC( QCOMBOBOX_ONCURRENTINDEXCHANGEDC )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONCURRENTINDEXCHANGED2 );
}

HB_FUNC_STATIC( QCOMBOBOX_ONHIGHLIGHTED )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONHIGHLIGHTED1 );
}

HB_FUNC_STATIC( QCOMBOBOX_ONHIGHLIGHTEDC )
{
  HB_FUNC_EXEC( QCOMBOBOX_ONHIGHLIGHTED2 );
}

#pragma ENDDUMP
