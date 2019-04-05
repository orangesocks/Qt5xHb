/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "HAbstractTableModel.h"

/*
  m�todo construtor
*/
HAbstractTableModel::HAbstractTableModel (QObject * parent) : QAbstractTableModel (parent)
{
  // linhas e colunas
  rowCountCB = NULL;
  colCountCB = NULL;

  // c�lulas
  getFieldCB = NULL;
  getFieldDecorationCB = NULL;
  getFieldEditCB = NULL;
  getFieldToolTipCB = NULL;
  getFieldStatusTipCB = NULL;
  getFieldWhatsThisCB = NULL;
  getFieldSizeHintCB = NULL;
  getFieldFontCB = NULL;
  getFieldAlignCB = NULL;
  getFieldBGColorCB = NULL;
  getFieldFGColorCB = NULL;

  // cabe�alho horizontal
  getHHCB = NULL;
  getHHDecorationCB = NULL;
  getHHFontCB = NULL;
  getHHAlignCB = NULL;
  getHHBGColorCB = NULL;
  getHHFGColorCB = NULL;

  // cabe�alho vertical
  getVHCB = NULL;
  getVHDecorationCB = NULL;
  getVHFontCB = NULL;
  getVHAlignCB = NULL;
  getVHBGColorCB = NULL;
  getVHFGColorCB = NULL;
}

/*
  m�todo destruidor
*/
HAbstractTableModel::~HAbstractTableModel ()
{
  // linhas e colunas
  if( rowCountCB )
  {
    hb_itemRelease( rowCountCB );
    rowCountCB = NULL;
  }
  if( colCountCB )
  {
    hb_itemRelease( colCountCB );
    colCountCB = NULL;
  }

  // c�lulas
  if( getFieldCB )
  {
    hb_itemRelease( getFieldCB );
    getFieldCB = NULL;
  }
  if( getFieldDecorationCB )
  {
    hb_itemRelease( getFieldDecorationCB );
    getFieldDecorationCB = NULL;
  }
  if( getFieldEditCB )
  {
    hb_itemRelease( getFieldEditCB );
    getFieldEditCB = NULL;
  }
  if( getFieldToolTipCB )
  {
    hb_itemRelease( getFieldToolTipCB );
    getFieldToolTipCB = NULL;
  }
  if( getFieldStatusTipCB )
  {
    hb_itemRelease( getFieldStatusTipCB );
    getFieldStatusTipCB = NULL;
  }
  if( getFieldWhatsThisCB )
  {
    hb_itemRelease( getFieldWhatsThisCB );
    getFieldWhatsThisCB = NULL;
  }
  if( getFieldSizeHintCB )
  {
    hb_itemRelease( getFieldSizeHintCB );
    getFieldSizeHintCB = NULL;
  }
  if( getFieldFontCB )
  {
    hb_itemRelease( getFieldFontCB );
    getFieldFontCB = NULL;
  }
  if( getFieldAlignCB )
  {
    hb_itemRelease( getFieldAlignCB );
    getFieldAlignCB = NULL;
  }
  if( getFieldBGColorCB )
  {
    hb_itemRelease( getFieldBGColorCB );
    getFieldBGColorCB = NULL;
  }
  if( getFieldFGColorCB )
  {
    hb_itemRelease( getFieldFGColorCB );
    getFieldFGColorCB = NULL;
  }

  // cabe�alho horizontal
  if( getHHCB )
  {
    hb_itemRelease( getHHCB );
    getHHCB = NULL;
  }
  if( getHHDecorationCB )
  {
    hb_itemRelease( getHHDecorationCB );
    getHHDecorationCB = NULL;
  }
  if( getHHFontCB )
  {
    hb_itemRelease( getHHFontCB );
    getHHFontCB = NULL;
  }
  if( getHHAlignCB )
  {
    hb_itemRelease( getHHAlignCB );
    getHHAlignCB = NULL;
  }
  if( getHHBGColorCB )
  {
    hb_itemRelease( getHHBGColorCB );
    getHHBGColorCB = NULL;
  }
  if( getHHFGColorCB )
  {
    hb_itemRelease( getHHFGColorCB );
    getHHFGColorCB = NULL;
  }

  // cabe�alho vertical
  if( getVHCB )
  {
    hb_itemRelease( getVHCB );
    getVHCB = NULL;
  }
  if( getVHDecorationCB )
  {
    hb_itemRelease( getVHDecorationCB );
    getVHDecorationCB = NULL;
  }
  if( getVHFontCB )
  {
    hb_itemRelease( getVHFontCB );
    getVHFontCB = NULL;
  }
  if( getVHAlignCB )
  {
    hb_itemRelease( getVHAlignCB );
    getVHAlignCB = NULL;
  }
  if( getVHBGColorCB )
  {
    hb_itemRelease( getVHBGColorCB );
    getVHBGColorCB = NULL;
  }
  if( getVHFGColorCB )
  {
    hb_itemRelease( getVHFGColorCB );
    getVHFGColorCB = NULL;
  }
}

/*
  define o codeblock para o n�mero de linhas
*/
void HAbstractTableModel::setRowCountCB ( PHB_ITEM block )
{
  if( rowCountCB )
  {
    hb_itemRelease( rowCountCB );
  }
  if( block )
  {
    rowCountCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o n�mero de colunas
*/
void HAbstractTableModel::setColumnCountCB ( PHB_ITEM block )
{
  if( colCountCB )
  {
    hb_itemRelease( colCountCB );
  }
  if( block )
  {
    colCountCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o conte�do da c�lula
*/
void HAbstractTableModel::setDisplayRoleCB ( PHB_ITEM block )
{
  if( getFieldCB )
  {
    hb_itemRelease( getFieldCB );
  }
  if( block )
  {
    getFieldCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a decora��o da c�lula
*/
void HAbstractTableModel::setDecorationRoleCB ( PHB_ITEM block )
{
  if( getFieldDecorationCB )
  {
    hb_itemRelease( getFieldDecorationCB );
  }
  if( block )
  {
    getFieldDecorationCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a edi��o da c�lula
*/
void HAbstractTableModel::setEditRoleCB ( PHB_ITEM block )
{
  if( getFieldEditCB )
  {
    hb_itemRelease( getFieldEditCB );
  }
  if( block )
  {
    getFieldEditCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o tooltip da c�lula
*/
void HAbstractTableModel::setToolTipRoleCB ( PHB_ITEM block )
{
  if( getFieldToolTipCB )
  {
    hb_itemRelease( getFieldToolTipCB );
  }
  if( block )
  {
    getFieldToolTipCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o statustip da c�lula
*/
void HAbstractTableModel::setStatusTipRoleCB ( PHB_ITEM block )
{
  if( getFieldStatusTipCB )
  {
    hb_itemRelease( getFieldStatusTipCB );
  }
  if( block )
  {
    getFieldStatusTipCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o whatsthis da c�lula
*/
void HAbstractTableModel::setWhatsThisRoleCB ( PHB_ITEM block )
{
  if( getFieldWhatsThisCB )
  {
    hb_itemRelease( getFieldWhatsThisCB );
  }
  if( block )
  {
    getFieldWhatsThisCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o sizehint da c�lula
*/
void HAbstractTableModel::setSizeHintRoleCB ( PHB_ITEM block )
{
  if( getFieldSizeHintCB )
  {
    hb_itemRelease( getFieldSizeHintCB );
  }
  if( block )
  {
    getFieldSizeHintCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a fonte da c�lula
*/
void HAbstractTableModel::setFontRoleCB ( PHB_ITEM block )
{
  if( getFieldFontCB )
  {
    hb_itemRelease( getFieldFontCB );
  }
  if( block )
  {
    getFieldFontCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o alinhamento do conte�do da c�lula
*/
void HAbstractTableModel::setTextAlignmentRoleCB ( PHB_ITEM block )
{
  if( getFieldAlignCB )
  {
    hb_itemRelease( getFieldAlignCB );
  }
  if( block )
  {
    getFieldAlignCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o background da c�lula
*/
void HAbstractTableModel::setBackgroundRoleCB ( PHB_ITEM block )
{
  if( getFieldBGColorCB )
  {
    hb_itemRelease( getFieldBGColorCB );
  }
  if( block )
  {
    getFieldBGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o foreground da c�lula
*/
void HAbstractTableModel::setForegroundRoleCB ( PHB_ITEM block )
{
  if( getFieldFGColorCB )
  {
    hb_itemRelease( getFieldFGColorCB );
  }
  if( block )
  {
    getFieldFGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o conte�do do cabe�alho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderDisplayRoleCB ( PHB_ITEM block )
{
  if( getHHCB )
  {
    hb_itemRelease( getHHCB );
  }
  if( block )
  {
    getHHCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a decora��o do cabe�alho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderDecorationRoleCB ( PHB_ITEM block )
{
  if( getHHDecorationCB )
  {
    hb_itemRelease( getHHDecorationCB );
  }
  if( block )
  {
    getHHDecorationCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a fonte do cabe�alho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderFontRoleCB ( PHB_ITEM block )
{
  if( getHHFontCB )
  {
    hb_itemRelease( getHHFontCB );
  }
  if( block )
  {
    getHHFontCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o alinhamento do conte�do do cabe�alho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderTextAlignmentRoleCB ( PHB_ITEM block )
{
  if( getHHAlignCB )
  {
    hb_itemRelease( getHHAlignCB );
  }
  if( block )
  {
    getHHAlignCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o background do cabe�alho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderBackgroundRoleCB ( PHB_ITEM block )
{
  if( getHHBGColorCB )
  {
    hb_itemRelease( getHHBGColorCB );
  }
  if( block )
  {
    getHHBGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o foreground do cabe�alho horizontal
*/
void HAbstractTableModel::setHorizontalHeaderForegroundRoleCB ( PHB_ITEM block )
{
  if( getHHFGColorCB )
  {
    hb_itemRelease( getHHFGColorCB );
  }
  if( block )
  {
    getHHFGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o conte�do do cabe�alho vertical
*/
void HAbstractTableModel::setVerticalHeaderDisplayRoleCB ( PHB_ITEM block )
{
  if( getVHCB )
  {
    hb_itemRelease( getVHCB );
  }
  if( block )
  {
    getVHCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a decora��o do cabe�alho vertical
*/
void HAbstractTableModel::setVerticalHeaderDecorationRoleCB ( PHB_ITEM block )
{
  if( getVHDecorationCB )
  {
    hb_itemRelease( getVHDecorationCB );
  }
  if( block )
  {
    getVHDecorationCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para a fonte do cabe�alho vertical
*/
void HAbstractTableModel::setVerticalHeaderFontRoleCB ( PHB_ITEM block )
{
  if( getVHFontCB )
  {
    hb_itemRelease( getVHFontCB );
  }
  if( block )
  {
    getVHFontCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o alinhamento do conte�do do cabe�alho vertical
*/
void HAbstractTableModel::setVerticalHeaderTextAlignmentRoleCB ( PHB_ITEM block )
{
  if( getVHAlignCB )
  {
    hb_itemRelease( getVHAlignCB );
  }
  if( block )
  {
    getVHAlignCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o background do cabe�alho vertical
*/
void HAbstractTableModel::setVerticalHeaderBackgroundRoleCB ( PHB_ITEM block )
{
  if( getVHBGColorCB )
  {
    hb_itemRelease( getVHBGColorCB );
  }
  if( block )
  {
    getVHBGColorCB = hb_itemNew( block );
  }
}

/*
  define o codeblock para o foreground do cabe�alho vertical
*/
void HAbstractTableModel::setVerticalHeaderForegroundRoleCB ( PHB_ITEM block )
{
  if( getVHFGColorCB )
  {
    hb_itemRelease( getVHFGColorCB );
  }
  if( block )
  {
    getVHFGColorCB = hb_itemNew( block );
  }
}

/*
  executa os codeblocks (c�lulas), conforme a informa��o (role) requisitada
*/
QVariant HAbstractTableModel::data( const QModelIndex & index, int role ) const
{
  QVariant data;

  // TODO: confirmar se a verifica��o abaixo � realmente necess�ria
  if( index.isValid() == false )
  {
    return data;
  }

  if( role == Qt::DisplayRole && getFieldCB )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldCB, 2, pRow, pCol ) );
    if( hb_itemType( pRet ) & HB_IT_STRING )
    {
      #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
      data = QLatin1String( hb_itemGetCPtr( pRet ) );
      #else
      data = hb_itemGetCPtr( pRet );
      #endif
    }
    else if( hb_itemType( pRet ) & HB_IT_MEMO )
    {
      #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
      data = QLatin1String( hb_itemGetCPtr( pRet ) );
      #else
      data = hb_itemGetCPtr( pRet );
      #endif
    }
    else if( hb_itemType( pRet ) & HB_IT_DOUBLE )
    {
      data = hb_itemGetND( pRet );
    }
    else if( hb_itemType( pRet ) & HB_IT_NUMERIC )
    {
      data = hb_itemGetNI( pRet );
    }
    else if( hb_itemType( pRet ) & HB_IT_LOGICAL )
    {
      data = hb_itemGetL( pRet );
    }
    else if( hb_itemType( pRet ) & HB_IT_DATE )
    {
      int y,m,d;
      hb_dateDecode( hb_itemGetDL( pRet ), &y, &m, &d );
      QDate date(y,m,d);
      data = date;
    }
    else if( hb_itemType( pRet ) & HB_IT_OBJECT )
    {
      void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
      //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
      //if( clsid == Class_Id_QVariant )
      if( hb_clsIsParent( hb_objGetClass( pRet ), "QVARIANT" ) )
      {
        data = *( (QVariant *) ptr );
      }
    }
    hb_itemRelease( pRow );
    hb_itemRelease( pCol );
    hb_itemRelease( pRet );
  }
  else if( role == Qt::DecorationRole && getFieldDecorationCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldDecorationCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QIcon )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
       {
         data = *( (QIcon *) ptr );
       }
       //else if( clsid == Class_Id_QPixmap )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QPIXMAP" ) )
       {
         data = *( (QPixmap *) ptr );
       }
       ptr = NULL;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QIcon( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::EditRole && getFieldEditCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldEditCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = hb_itemGetCPtr( pRet );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::ToolTipRole && getFieldToolTipCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldToolTipCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
       data = QLatin1String( hb_itemGetCPtr( pRet ) );
       #else
       data = hb_itemGetCPtr( pRet );
       #endif
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::StatusTipRole && getFieldStatusTipCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldStatusTipCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
       data = QLatin1String( hb_itemGetCPtr( pRet ) );
       #else
       data = hb_itemGetCPtr( pRet );
       #endif
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::WhatsThisRole && getFieldWhatsThisCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldWhatsThisCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
       data = QLatin1String( hb_itemGetCPtr( pRet ) );
       #else
       data = hb_itemGetCPtr( pRet );
       #endif
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::SizeHintRole && getFieldSizeHintCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldSizeHintCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QSize *) ptr );
       ptr = NULL;
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::FontRole && getFieldFontCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldFontCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
       ptr = NULL;
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::TextAlignmentRole && getFieldAlignCB )
  {
    PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
    PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldAlignCB, 2, pRow, pCol ) );
    if( hb_itemType( pRet ) & HB_IT_NUMERIC )
    {
      data = hb_itemGetNI( pRet );
    }
    hb_itemRelease( pRow );
    hb_itemRelease( pCol );
    hb_itemRelease( pRet );
  }
  else if( role == Qt::BackgroundRole && getFieldBGColorCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldBGColorCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QColor )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
       {
         data = *( (QColor *) ptr );
       }
       //else if( clsid == Class_Id_QBrush )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QBRUSH" ) )
       {
         data = *( (QBrush *) ptr );
       }
       ptr = NULL;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }
  else if( role == Qt::ForegroundRole && getFieldFGColorCB )
  {
     PHB_ITEM pRow = hb_itemPutNI( NULL, index.row() );
     PHB_ITEM pCol = hb_itemPutNI( NULL, index.column() );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getFieldFGColorCB, 2, pRow, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QColor *) ptr );
       ptr = NULL;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
  }

  return data;
}

/*
  executa os codeblocks (cabe�alhos), conforme a informa��o (role) requisitada
*/
QVariant HAbstractTableModel::headerData( int section, Qt::Orientation orientation, int role ) const
{
  QVariant data;

  if( orientation == Qt::Horizontal )
  {
    if( role == Qt::DisplayRole && getHHCB )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
        data = QLatin1String( hb_itemGetCPtr( pRet ) );
        #else
        data = hb_itemGetCPtr( pRet );
        #endif
      }
      else if( hb_itemType( pRet ) & HB_IT_DOUBLE )
      {
        data = hb_itemGetND( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_LOGICAL )
      {
        data = hb_itemGetL( pRet );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::DecorationRole && getHHDecorationCB )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHDecorationCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_OBJECT )
      {
        void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
        //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
        //if( clsid == Class_Id_QIcon )
        if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
        {
          data = *( (QIcon *) ptr );
        }
        //else if( clsid == Class_Id_QPixmap )
        else if( hb_clsIsParent( hb_objGetClass( pRet ), "QPIXMAP" ) )
        {
          data = *( (QPixmap *) ptr );
        }
        ptr = NULL;
      }
      else if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        data = QIcon( hb_itemGetCPtr( pRet ) );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::FontRole && getHHFontCB )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHFontCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
       ptr = NULL;
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
    else if( role == Qt::TextAlignmentRole && getHHAlignCB )
    {
      PHB_ITEM pCol = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHAlignCB, 1, pCol ) );
      if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      hb_itemRelease( pCol );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::BackgroundRole && getHHBGColorCB )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHBGColorCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QColor )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
       {
         data = *( (QColor *) ptr );
       }
       //else if( clsid == Class_Id_QBrush )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QBRUSH" ) )
       {
         data = *( (QBrush *) ptr );
       }
       ptr = NULL;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
    else if( role == Qt::ForegroundRole && getHHFGColorCB )
    {
     PHB_ITEM pCol = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getHHFGColorCB, 1, pCol ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QColor *) ptr );
       ptr = NULL;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pCol );
     hb_itemRelease( pRet );
    }
  }
  else if( orientation == Qt::Vertical )
  {
    if( role == Qt::DisplayRole && getVHCB )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        #if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
        data = QLatin1String( hb_itemGetCPtr( pRet ) );
        #else
        data = hb_itemGetCPtr( pRet );
        #endif
      }
      else if( hb_itemType( pRet ) & HB_IT_DOUBLE )
      {
        data = hb_itemGetND( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      else if( hb_itemType( pRet ) & HB_IT_LOGICAL )
      {
        data = hb_itemGetL( pRet );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::DecorationRole && getVHDecorationCB )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHDecorationCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_OBJECT )
      {
        void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
        //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
        //if( clsid == Class_Id_QIcon )
        if( hb_clsIsParent( hb_objGetClass( pRet ), "QICON" ) )
        {
          data = *( (QIcon *) ptr );
        }
        //else if( clsid == Class_Id_QPixmap )
        else if( hb_clsIsParent( hb_objGetClass( pRet ), "QPIXMAP" ) )
        {
          data = *( (QPixmap *) ptr );
        }
        ptr = NULL;
      }
      else if( hb_itemType( pRet ) & HB_IT_STRING )
      {
        data = QIcon( hb_itemGetCPtr( pRet ) );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::FontRole && getVHFontCB )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHFontCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QFont *) ptr );
       ptr = NULL;
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
    else if( role == Qt::TextAlignmentRole && getVHAlignCB )
    {
      PHB_ITEM pRow = hb_itemPutNI( NULL, section );
      PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHAlignCB, 1, pRow ) );
      if( hb_itemType( pRet ) & HB_IT_NUMERIC )
      {
        data = hb_itemGetNI( pRet );
      }
      hb_itemRelease( pRow );
      hb_itemRelease( pRet );
    }
    else if( role == Qt::BackgroundRole && getVHBGColorCB )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHBGColorCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       //int clsid = hb_itemGetNI( hb_objSendMsg( pRet, "CLASS_ID", 0 ) );
       //if( clsid == Class_Id_QColor )
       if( hb_clsIsParent( hb_objGetClass( pRet ), "QCOLOR" ) )
       {
         data = *( (QColor *) ptr );
       }
       //else if( clsid == Class_Id_QBrush )
       else if( hb_clsIsParent( hb_objGetClass( pRet ), "QBRUSH" ) )
       {
         data = *( (QBrush *) ptr );
       }
       ptr = NULL;
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
    else if( role == Qt::ForegroundRole && getVHFGColorCB )
    {
     PHB_ITEM pRow = hb_itemPutNI( NULL, section );
     PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( getVHFGColorCB, 1, pRow ) );
     if( hb_itemType( pRet ) & HB_IT_OBJECT )
     {
       void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
       data = *( (QColor *) ptr );
     }
     else if( hb_itemType( pRet ) & HB_IT_STRING )
     {
       data = QColor( hb_itemGetCPtr( pRet ) );
     }
     hb_itemRelease( pRow );
     hb_itemRelease( pRet );
    }
  }

  return data;
}

/*
  executa o codeblock que retorna o n�mero de linhas
*/
int HAbstractTableModel::rowCount( const QModelIndex & parent ) const
{
  if( parent.isValid() )
  {
    return 0;
  }
  else
  {
    if( rowCountCB )
    {
      return (int) hb_itemGetNI( hb_vmEvalBlockV( rowCountCB, 0 ) );
    }
    else
    {
      return 0;
    }
  }
}

/*
  executa o codeblock que retorna o n�mero de colunas
*/
int HAbstractTableModel::columnCount( const QModelIndex & parent ) const
{
  if( parent.isValid() )
  {
    return 0;
  }
  else
  {
    if( colCountCB )
    {
      return (int) hb_itemGetNI( hb_vmEvalBlockV( colCountCB, 0 ) );
    }
    else
    {
      return 0;
    }
  }
}

/*
  emite o sinal QAbstractItemModel::layoutChanged(), for�ando
  o recarregamento dos dados
*/
void HAbstractTableModel::reloadData()
{
  // Notas da documenta��o do Qt:
  emit QAbstractTableModel::layoutAboutToBeChanged();
  // Remember the QModelIndex that will change
  // Update your internal data
  // Call changePersistentIndex()
  // emit layoutChanged
  //emit QAbstractItemModel::layoutChanged();
  emit QAbstractTableModel::layoutChanged();
}

/*
  cria um objeto da classe QModelIndex
*/
// QModelIndex HAbstractTableModel::createIndex ( int row, int column )
// {
//   return QAbstractItemModel::createIndex( row, column, 0 );
// }
