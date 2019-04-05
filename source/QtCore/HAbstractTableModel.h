/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HABSTRACTTABLEMODEL_H
#define HABSTRACTTABLEMODEL_H

#include <QtCore/QAbstractTableModel>
#include <QtGui/QIcon>
#include <QtGui/QPixmap>
#include <QtGui/QFont>
#include <QtGui/QColor>
#include <QtGui/QBrush>
#include <QtCore/QSize>
#include <QtCore/QDate>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

class HAbstractTableModel : public QAbstractTableModel
{
  Q_OBJECT

public:
  HAbstractTableModel( QObject * parent = 0 );
  virtual ~HAbstractTableModel();

  PHB_ITEM rowCountCB;
  PHB_ITEM colCountCB;

  PHB_ITEM getFieldCB;
  PHB_ITEM getFieldDecorationCB;
  PHB_ITEM getFieldEditCB;
  PHB_ITEM getFieldToolTipCB;
  PHB_ITEM getFieldStatusTipCB;
  PHB_ITEM getFieldWhatsThisCB;
  PHB_ITEM getFieldSizeHintCB;
  PHB_ITEM getFieldFontCB;
  PHB_ITEM getFieldAlignCB;
  PHB_ITEM getFieldBGColorCB;
  PHB_ITEM getFieldFGColorCB;

  PHB_ITEM getHHCB;
  PHB_ITEM getHHDecorationCB;
  PHB_ITEM getHHFontCB;
  PHB_ITEM getHHAlignCB;
  PHB_ITEM getHHBGColorCB;
  PHB_ITEM getHHFGColorCB;

  PHB_ITEM getVHCB;
  PHB_ITEM getVHDecorationCB;
  PHB_ITEM getVHFontCB;
  PHB_ITEM getVHAlignCB;
  PHB_ITEM getVHBGColorCB;
  PHB_ITEM getVHFGColorCB;

  void setRowCountCB ( PHB_ITEM block );
  void setColumnCountCB ( PHB_ITEM block );

  void setDisplayRoleCB ( PHB_ITEM block );
  void setDecorationRoleCB ( PHB_ITEM block );
  void setEditRoleCB ( PHB_ITEM block );
  void setToolTipRoleCB ( PHB_ITEM block );
  void setStatusTipRoleCB ( PHB_ITEM block );
  void setWhatsThisRoleCB ( PHB_ITEM block );
  void setSizeHintRoleCB ( PHB_ITEM block );
  void setFontRoleCB ( PHB_ITEM block );
  void setTextAlignmentRoleCB ( PHB_ITEM block );
  void setBackgroundRoleCB ( PHB_ITEM block );
  void setForegroundRoleCB ( PHB_ITEM block );

  void setHorizontalHeaderDisplayRoleCB ( PHB_ITEM block );
  void setHorizontalHeaderDecorationRoleCB ( PHB_ITEM block );
  void setHorizontalHeaderFontRoleCB ( PHB_ITEM block );
  void setHorizontalHeaderTextAlignmentRoleCB ( PHB_ITEM block );
  void setHorizontalHeaderBackgroundRoleCB ( PHB_ITEM block );
  void setHorizontalHeaderForegroundRoleCB ( PHB_ITEM block );

  void setVerticalHeaderDisplayRoleCB ( PHB_ITEM block );
  void setVerticalHeaderDecorationRoleCB ( PHB_ITEM block );
  void setVerticalHeaderFontRoleCB ( PHB_ITEM block );
  void setVerticalHeaderTextAlignmentRoleCB ( PHB_ITEM block );
  void setVerticalHeaderBackgroundRoleCB ( PHB_ITEM block );
  void setVerticalHeaderForegroundRoleCB ( PHB_ITEM block );

  QVariant data ( const QModelIndex & index, int role = Qt::DisplayRole ) const;
  QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const;
  int rowCount ( const QModelIndex & parent = QModelIndex() ) const;
  int columnCount ( const QModelIndex & parent = QModelIndex() ) const;
  void reloadData();
  //QModelIndex createIndex ( int row, int column );

};

#endif /* HABSTRACTTABLEMODEL_H */
